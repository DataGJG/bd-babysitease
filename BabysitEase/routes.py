# routes.py

# Importa a função de conexão com o banco de dados
from db_connection import connect_to_db

# Função para lidar com as solicitações
def handle_request(path):
    if path == '/':
        return home()
    elif path == '/usuarios':
        return get_users()
    elif path == '/produtos':
        return get_products()
    elif path.startswith('/criar_conta'):
        return criar_conta(path)
    else:
        return '404 - Página não encontrada'

# Função para lidar com a rota '/'
def home():
    return 'Página inicial'

# Função para lidar com a rota '/usuarios'
def get_users():
    conn = connect_to_db()
    if conn:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM usuarios")
        users = cursor.fetchall()
        cursor.close()
        conn.close()
        user_list = "\n".join([f"ID: {user[0]}, Nome: {user[1]}, E-mail: {user[2]}" for user in users])
        return user_list
    else:
        return 'Erro ao conectar ao banco de dados'

# Função para lidar com a rota '/produtos'
def get_products():
    conn = connect_to_db()
    if conn:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM produtos")
        products = cursor.fetchall()
        cursor.close()
        conn.close()
        product_list = "\n".join([f"ID: {product[0]}, Nome: {product[1]}, Preço: {product[2]}" for product in products])
        return product_list
    else:
        return 'Erro ao conectar ao banco de dados'

# Função para lidar com a criação de conta
def criar_conta(path):
    if path == '/criar_conta/baba':
        return criar_conta_baba()
    elif path == '/criar_conta/pai':
        return criar_conta_pai()
    else:
        return '404 - Página não encontrada'

# Função para criar uma conta de babá
def criar_conta_baba():
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            # Aqui você pode adicionar a lógica para inserir os dados da conta de babá no banco de dados
            cursor.execute("INSERT INTO babas (nome, email, senha, experiencia) VALUES (%s, %s, %s, %s)", ("Nome da Babá", "email@example.com", "senha123", "Experiência da Babá"))
            conn.commit()
            cursor.close()
            conn.close()
            return 'Conta de babá criada com sucesso'
        except Exception as e:
            return f'Erro ao criar conta de babá: {e}'
    else:
        return 'Erro ao conectar ao banco de dados'

# Função para criar uma conta de pai
def criar_conta_pai():
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            # Aqui você pode adicionar a lógica para inserir os dados da conta de pai no banco de dados
            cursor.execute("INSERT INTO pais (nome, email, senha, endereco) VALUES (%s, %s, %s, %s)", ("Nome do Pai", "email@example.com", "senha123", "Endereço do Pai"))
            conn.commit()
            cursor.close()
            conn.close()
            return 'Conta de pai criada com sucesso'
        except Exception as e:
            return f'Erro ao criar conta de pai: {e}'
    else:
        return 'Erro ao conectar ao banco de dados'