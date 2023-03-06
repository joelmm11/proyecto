from flask_app import app
from flask_app.config.mysqlconnection import connectToMySQL
from flask import flash



DB = "tienda_virtual"

class User:
    
    def __init__(self,user):

        self.id = user["id"]
        self.nombre = user["nombre"]
        self.apellido = user["apellido"]
        self.departamento = user["departamento"]
        self.direccion = user["direccion"] 
        self.telefono = user["telefono"]
        self.referencia = user["referencia"]

    
    @classmethod
    def get_by_id(cls, user_id):

        data = {"id": user_id}
        query = "SELECT * FROM usuarios WHERE id = %(id)s;"
        result = connectToMySQL(DB).query_db(query,data)
        
        # si encuentra el usuario
        if len(result) < 1:
            return False
        return cls(result[0])

    @classmethod
    def get_all(cls):
        query = "SELECT * from usuarios;"
        user_data = connectToMySQL(DB).query_db(query)

        users = []
        for user in user_data:
            users.append(cls(user))

        return users

    @classmethod
    def save_usuario(cls, usuario):
        #validar registro
        if not cls.is_valid(usuario):
            return False
        query = "insert into usuarios (nombre, apellido, departamento, direccion, telefono, referencia) values (%(nombre)s,%(apellido)s,%(departamento)s,%(direccion)s,%(telefono)s,%(referencia)s)"
        
        return connectToMySQL(DB).query_db(query,usuario)

    # Validación de datos de formulario
    @classmethod
    def is_valid(cls, user):
        valid = True

        if len(user["nombre"]) < 3:
            valid = False
            flash("No dejar campos vacios.", "register")
        if len(user["apellido"]) < 3:
            valid = False
            flash("No dejar campos vacios.", "register") 
        return valid