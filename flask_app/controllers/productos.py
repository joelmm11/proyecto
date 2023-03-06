from flask_app import app
from flask import render_template, session, redirect,request,url_for,make_response
from flask_app.models.user import User
from flask_app.models.producto import Producto
import json


@app.route("/")
def index():
    productos = Producto.get_all()
    print(productos)
    return render_template("index.html", productos=productos)

#buscador
@app.route("/search", methods=["POST"])
def search():
   
    productos = Producto.get_by_producto(request.form.get("producto"))
    print(productos)
    return render_template("index.html", productos=productos)

#mostrar productos
@app.route("/showproduct/<int:producto_id>")
def showproduct(producto_id):

    productos = Producto.get_by_id(producto_id)
    return render_template("producto.html", productos = productos)

# Referencia código del carrito https://plataforma.josedomingo.org/pledin/cursos/flask/curso/u31/
#agregar al carrito
@app.route('/carrito_add', methods=["get", "post"])
def carrito_add():
            try:
                datos = json.loads(request.cookies.get('galleta'))
            except:
                datos = []
            actualizar = False
            id = request.form.get("id")
            cantidad = request.form.get("cantidad")
            for dato in datos:
                if dato["id"] == id:
                    actualizar = True
            if not actualizar:
                datos.append({"id": id,
                              "cantidad": cantidad})
            resp = make_response(redirect(url_for('carrito')))
            resp.set_cookie('galleta',json.dumps(datos))
            print(datos)
            return resp

#mostrar al carrito
@app.route('/carrito')
def carrito():
    try:
        datos = json.loads(request.cookies.get('galleta'))
    except:
        datos = []
    productos = []
    total = 0
    for producto in datos:
        productos = productos + Producto.get_by_id(producto['id'])
       

    for producto in productos:
        total = total + int(producto.precio)
    print(total)
    return render_template("carrito.html", datos=datos, productos=productos, total = format(total, ',d'))

#eliminar articulo del carrito
@app.route('/carrito_delete/<id>')

def carrito_delete(id):
    try:
        datos = json.loads(request.cookies.get('galleta'))
    except:
        datos = []
    new_datos = []
    for dato in datos:
        if dato["id"] != id:
            new_datos.append(dato)
    resp = make_response(redirect(url_for('carrito')))
    resp.set_cookie('galleta', json.dumps(new_datos))
    return resp