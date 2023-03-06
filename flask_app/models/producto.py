from flask_app import app
from flask_app.config.mysqlconnection import connectToMySQL
from flask import flash
DB = "tienda_virtual"

class Producto:
    def __init__(self,producto):
        self.id = producto["id"]
        self.codigo = producto["codigo"]
        self.producto = producto["producto"]
        self.descripcion = producto["descripcion"]
        self.precio = producto["precio"]
        self.imagen = producto["imagen"]
        
    @classmethod
    def get_all(cls):
        query = "SELECT * from producto;"
        producto_data = connectToMySQL(DB).query_db(query)
        productos = []
        for producto in producto_data:
            productos.append(cls(producto))
        return productos
    
    @classmethod
    def get_by_producto(cls,producto):
   
        data = {"producto":"%%"+producto+"%%"}
        query = "SELECT * FROM producto where producto like %(producto)s;"

        result = connectToMySQL(DB).query_db(query,data)

        productos = []
        for producto in result:
            productos.append(cls(producto))
        return productos

    @classmethod
    def get_by_id(cls, producto_id):

        data = {"id": producto_id}
        query = "SELECT * FROM producto WHERE id = %(id)s;"
        result = connectToMySQL(DB).query_db(query,data)
        productos = []
        for producto in result:
            productos.append(cls(producto))
        return productos