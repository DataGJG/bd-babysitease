# server.py

from http.server import BaseHTTPRequestHandler, HTTPServer
from routes import handle_request

# Define a classe para lidar com as requisições HTTP
class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    # Método para lidar com requisições GET
    def do_GET(self):
        # Define o código de resposta como 200 (OK)
        self.send_response(200)
        # Define os cabeçalhos da resposta
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        
        # Obtém o caminho da requisição
        path = self.path
        
        # Chama a função para lidar com a requisição e obtém a resposta
        response = handle_request(path)
        
        # Envia a resposta de volta para o cliente
        self.wfile.write(response.encode())

# Função para iniciar o servidor
def run(server_class=HTTPServer, handler_class=SimpleHTTPRequestHandler, port=8000):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print(f'Servidor rodando na porta {port}')
    httpd.serve_forever()

# Executa o servidor
if __name__ == "__main__":
    run()
