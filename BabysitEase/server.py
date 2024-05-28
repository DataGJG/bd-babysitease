from http.server import BaseHTTPRequestHandler, HTTPServer
from config import DB_CONFIG as DATABASE_CONFIG
import mysql.connector
import urllib.parse
import json
from db_connection import connect_to_db
from decimal import Decimal

# Código existente omitido por brevidade

class RequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        parsed_path = urllib.parse.urlparse(self.path)
        query_params = urllib.parse.parse_qs(parsed_path.query)

        if parsed_path.path == '/home':
            self.handle_home(query_params)
        else:
            self.send_response(404)
            self.end_headers()
            self.wfile.write(b'Not Found')

    def handle_home(self, query_params):
        conn = mysql.connector.connect(**DATABASE_CONFIG)
        cursor = conn.cursor(dictionary=True)

        sql_query = 'SELECT b.cpf, a.name, b.description, b.hourly_price FROM babysitter b, account a WHERE b.cpf = a.cpf'

        # Verificar e adicionar apenas um filtro à consulta
        if 'priceRange' in query_params:
            price_range = query_params['priceRange'][0].split(',')
            sql_query += f" AND b.hourly_price BETWEEN {float(price_range[0])} AND {float(price_range[1])}"
        elif 'rating' in query_params:
            rating = int(query_params['rating'][0])
            sql_query += f" AND b.rating = {rating}"
        elif 'experience' in query_params:
            experience = int(query_params['experience'][0])
            # Se for 1, realiza consulta para <= 3
            # se for 2, realiza consulta para > 3 e <= 5
            # se for 3, realiza consulta para > 5
    
            if experience == 1:
                sql_query += " AND b.experience_years <= 3"
            elif experience == 2:
                sql_query += " AND b.experience_years > 3 AND b.experience_years <= 5"
            elif experience == 3:
                sql_query += " AND b.experience_years > 5"
        elif 'languages' in query_params:
            languages = query_params['languages']
            languages_str = ','.join([f"'{lang}'" for lang in languages])
            sql_query = f"SELECT b.cpf, a.name, b.description, b.hourly_price FROM babysitter b JOIN account a ON b.cpf = a.cpf JOIN babysitter_languages bl ON b.cpf = bl.babysitter_cpf JOIN languages l ON bl.language_name = l.name WHERE l.name = {languages_str}"

        cursor.execute(sql_query)
        babysitters = cursor.fetchall()

        conn.close()

        response = [
            {
                "id": babysitter["cpf"],
                "name": babysitter["name"],
                "description": babysitter["description"],
                "hourlyPrice": float(babysitter["hourly_price"]),
                "image": "https://via.placeholder.com/150",
                "isFavorited": False,
            }
            for babysitter in babysitters
        ]

        self.send_response(200)
        self.send_header('Content-Type', 'application/json')
        self.send_header('Access-Control-Allow-Origin', '*')  # Allow access from all origins
        self.end_headers()
        self.wfile.write(json.dumps(response).encode('utf-8'))

# Função principal para iniciar o servidor
def run(server_class=HTTPServer, handler_class=RequestHandler, port=8000):
    connect_to_db()
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print(f'Starting server on port {port}...')
    httpd.serve_forever()

if __name__ == '__main__':
    run()
