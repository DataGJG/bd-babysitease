# server.py

import http.server
import ssl
from routes import handle_request

class MyHandler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        response = handle_request(self.path)
        self.send_response(200)
        self.end_headers()
        if isinstance(response, tuple) and response[0] == 'redirect':
            self.send_response(302)
            self.send_header('Location', response[1])
            self.end_headers()
        else:
            self.wfile.write(response.encode('utf-8'))
    
    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length).decode('utf-8')
        response = handle_request(self.path, post_data)
        self.send_response(200)
        self.end_headers()
        self.wfile.write(response.encode('utf-8'))

if __name__ == '__main__':
    httpd = http.server.HTTPServer(('localhost', 8000), MyHandler)
    
    # Criação de contexto SSL
    context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    context.load_cert_chain(certfile="cert.pem", keyfile="key.pem")
    
    # Envolva o socket com o contexto SSL
    httpd.socket = context.wrap_socket(httpd.socket, server_side=True)
    
    print("Servidor rodando na porta https://localhost:8000")
    httpd.serve_forever()
