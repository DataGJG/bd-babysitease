from http.server import BaseHTTPRequestHandler, HTTPServer
from config import DB_CONFIG as DATABASE_CONFIG
import mysql.connector
import urllib.parse
import json
from db_connection import connect_to_db

class RequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/home':
            self.handle_home()
        else:
            self.send_response(404)
            self.end_headers()
            self.wfile.write(b'Not Found')

    def handle_home(self):
        conn = mysql.connector.connect(**DATABASE_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute('SELECT b.cpf, a.name, b.description, b.hourly_price FROM babysitter b, account a WHERE b.cpf = a.cpf')
        babysitters = cursor.fetchall()
        print(babysitters)
        conn.close()

        response = [
            {
                "id": babysitter["cpf"],
                "name": babysitter["name"],
                "description": babysitter["description"],
                "hourlyPrice": babysitter["hourly_price"],
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
