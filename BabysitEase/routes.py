# routes.py

# Importa a função de conexão com o banco de dados
from db_connection import connect_to_db
import json

# Função para lidar com as solicitações
def handle_request(path, body=None):
    if path == '/':
        return home()
    elif path == '/usuarios':
        return get_users()
    elif path == '/produtos':
        return get_products()
    elif path == '/signup/babysitter':
        if body:
            return criar_conta_baba(body)
        else:
            return '400 - Corpo da requisição vazio'
    elif path == '/signup/parent':
        if body:
            return criar_conta_pai(body)
        else:
            return '400 - Corpo da requisição vazio'
    else:
        return '404 - Página não encontrada'

def criar_conta_pai(body):
    try:
        data = json.loads(body)
        print('Dados do pai:', data)
        conn = connect_to_db()
        if conn:
            cursor = conn.cursor()
            cursor.execute("INSERT INTO pais (nome, email, senha) VALUES (%s, %s, %s)", (data['nome'], data['email'], data['senha']))
            conn.commit()
            cursor.close()
            conn.close()
            return 'Conta de pai criada com sucesso'
        else:
            return 'Erro ao conectar ao banco de dados'
    except json.JSONDecodeError:
        return '400 - Erro ao decodificar JSON'
    except KeyError as e:
        return f'400 - Campo obrigatório ausente: {e}'
    except Exception as e:
        return f'Erro ao criar conta de pai: {e}'

def home():
    return ('redirect', 'https://127.0.0.1:5500/templates/home.html')

def get_users():
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM account")
            users = cursor.fetchall()
            cursor.close()
            conn.close()
            user_list = "\n".join([f"ID: {user[0]}, Nome: {user[1]}, E-mail: {user[2]}" for user in users])
            return user_list
        except Exception as e:
            return f'Erro ao buscar usuários: {e}'
    else:
        return 'Erro ao conectar ao banco de dados'

def criar_conta_baba(body):
    try:
        data = json.loads(body)
        conn = connect_to_db()
        if conn:
            cursor = conn.cursor()
            cursor.execute("INSERT INTO babas (nome, email, senha, experiencia) VALUES (%s, %s, %s, %s)", (data['nome'], data['email'], data['senha'], data['experiencia']))
            conn.commit()
            cursor.close()
            conn.close()
            return 'Conta de babá criada com sucesso'
        else:
            return 'Erro ao conectar ao banco de dados'
    except json.JSONDecodeError:
        return '400 - Erro ao decodificar JSON'
    except KeyError as e:
        return f'400 - Campo obrigatório ausente: {e}'
    except Exception as e:
        return f'Erro ao criar conta de babá: {e}'

def get_products():
    # Supondo que exista uma função para obter produtos
    return 'Função get_products ainda não implementada'
