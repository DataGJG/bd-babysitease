# db_connection.py

import mysql.connector
from config import DB_CONFIG as db_config

# Função para estabelecer a conexão com o banco de dados
def connect_to_db():
    try:
        conn = mysql.connector.connect(**db_config)
        print("Conexão com o banco de dados estabelecida com sucesso!")
        return conn
    except mysql.connector.Error as err:
        print(f"Erro ao conectar ao banco de dados: {err}")
        return None

# Função para criar a tabela de usuários
def create_users_table():
    conn = connect_to_db()
    if conn:
        cursor = conn.cursor()
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS usuarios (
                id INT AUTO_INCREMENT PRIMARY KEY,
                nome VARCHAR(255),
                email VARCHAR(255)
            )
        """)
        print("Tabela de usuários criada com sucesso!")
        cursor.close()
        conn.close()
    else:
        print("Erro ao conectar ao banco de dados")