from flask_app import app
from flask_app.config.mysqlconnection import connectToMySQL

DB = "tienda_virtual"

class Departamento:
    def __init__(self,departamento):
        self.id = departamento["id"]
        self.name = departamento["name"]
        self.capital = departamento["capital"]

    @classmethod
    def get_all(cls):
        query = "select * from departments;"
        departamento_data = connectToMySQL(DB).query_db(query)
        departamentos = []
        for departamento in departamento_data:
            departamentos.append(cls(departamento))
        return departamentos

