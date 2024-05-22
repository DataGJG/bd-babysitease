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
