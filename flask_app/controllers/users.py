from flask_app import app
from flask import render_template, session, redirect,request,url_for,make_response
from flask_app.models.user import User
from flask_app.models.producto import Producto
from flask_app.models.departamento import Departamento 
import json

from flask import flash


#mostrar el sumario
@app.route('/registro')
def registro():
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
    departamentos = Departamento.get_all()
    print(total)
    return render_template("registro.html", datos=datos, productos=productos, total = format(total, ',d'), departamentos = departamentos)

@app.route('/registrar_compra', methods=['POST'])
def registrar_compra():
    User.save_usuario(request.form)
    datos=[]
    resp = make_response(redirect(url_for('gracias')))
    resp.set_cookie('galleta',json.dumps(datos))
    print(datos)
    return resp

@app.route('/gracias')
def gracias():
    return render_template("gracias.html")




