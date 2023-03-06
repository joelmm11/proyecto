from flask_app import app
from flask_app.config.mysqlconnection import connectToMySQL

DB = "tienda_virtual"

class Compra:
    def __init__(self,compra):
        self.user_id = compra["user_id"]
        self.producto_id = compra["producto_id"]

    @classmethod
    def get_all(cls):
        query = "select * from compras;"
        compra_data = connectToMySQL(DB).query_db(query)
        compras = []
        for departamento in compra_data:
            compras.append(cls(departamento))
        return compras

    @classmethod
    def save_compra(user_id, producto_id):
        data = {"user_id": user_id,
                "producto_id": producto_id}
        query = "insert into compras (user_id,producto_id) values (%(user_id)s,%(producto_id)s)"
        
        return connectToMySQL(DB).query_db(query,data)

