# main.py

# Importa as funções de roteamento
from db_connection import create_users_table
from routes import home, get_users, get_products

create_users_table()

# Função para lidar com as requisições
def handle_request(path):
    if path == '/':
        return home()
    elif path == '/usuarios':
        return get_users()
    elif path == '/produtos':
        return get_products()
    else:
        return '404 - Página não encontrada'

# Exemplo de uso
if __name__ == "__main__":
    while True:
        path = input("Digite a rota desejada (ex: /usuarios): ")
        print(handle_request(path))
