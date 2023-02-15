import mysql.connector

connect = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="",
    database="rpgthings"
)

cursor = connect.cursor()


def start(pesquisa, item, tipo):
    if pesquisa == "" and item == "Itens" and tipo == "Tipos":
        tables = []
        comando = "SELECT * FROM poções"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = "SELECT * FROM óleos"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = "SELECT * FROM ferramentas"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = "SELECT * FROM armas"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = "SELECT * FROM objetos"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        return tables
    elif pesquisa != "" and item == "Itens" and tipo == "Tipos":
        tables = []
        comando = f"SELECT * FROM poções WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = f"SELECT * FROM óleos WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = f"SELECT * FROM ferramentas WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = f"SELECT * FROM armas WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        comando = f"SELECT * FROM objetos WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
        cursor.execute(comando)
        tables.append(cursor.fetchall())
        return tables
    elif item != "Itens" and tipo == "Tipos":
        try:
            tables = []
            comando = f"SELECT * FROM {item} WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            return tables
        except:
            return []
    elif item != "Itens" and tipo != "Tipos":
        try:
            tables = []
            comando = f"SELECT * FROM {item} WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            return tables
        except:
            return []
    elif item == "Itens" and tipo != "Tipos":
        try:
            tables = []
            comando = f"SELECT * FROM poções WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            comando = f"SELECT * FROM óleos WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            comando = f"SELECT * FROM ferramentas WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            comando = f"SELECT * FROM armas WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            comando = f"SELECT * FROM objetos WHERE nome LIKE '%{pesquisa}%' or descrição LIKE '%{pesquisa}%' AND tipo = '{tipo}'"
            cursor.execute(comando)
            tables.append(cursor.fetchall())
            return tables
        except:
            return []