const express = require("express");
const app = express();

const dotenv = require("dotenv");
dotenv.config();

//conexión con la base de datos
const { connection } = require("../config");

const getUsuarios = (req, res) => {
    connection.query("SELECT * FROM usuarios",
        (error, results) => {
            if (error)
                throw error;
            res.status(200).json(results);
        });
};
//ruta
app.route("/usuarios").get(getUsuarios);


const postUsuarios = (req, res) => {
    const { Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena } = req.body;
    connection.query("INSERT INTO usuarios(Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena) VALUES(?,?,?,?,?,?,?,?,?)",
        [Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena],
        (error, results) => {
            if (error)
                throw error;
            res.status(201).json({ "Item añadido correctamente": results.affectedRows });
        });
};
//ruta
app.route("/usuarios").post(postUsuarios);


const putUsuarios = (req, res) => {
    const Documento = req.params.Documento;
    connection.query("UPDATE usuarios SET Rol = ?, Nombre = ?, Apellidos = ?, TipoDocumento = ?, Direccion = ?, Telefono = ?, Correo = ?, Contrasena = ? WHERE Documento = ?",
        [Documento],
        (error, results) => {
            if (error)
                throw error;
            res.status(201).json({ "Item añadido correctamente": results.affectedRows });
        });
};
//ruta
app.route("/usuarios/:Documento").put(putUsuarios);


const patchUsuarios = (req, res) => {
    const { Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena } = req.body;
    connection.query("INSERT INTO usuarios(Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena) VALUES(?,?,?,?,?,?,?,?,?)",
        [Rol, Nombre, Apellidos, TipoDocumento, Documento, Direccion, Telefono, Correo, Contrasena],
        (error, results) => {
            if (error)
                throw error;
            res.status(201).json({ "Item añadido correctamente": results.affectedRows });
        });
};
//ruta
app.route("/usuarios").patch(patchUsuarios);


const deleteUsuarios = (req, res) => {
    const Documento = req.params.Documento;
    connection.query("DELETE FROM usuarios WHERE Documento = ?",
        [Documento],
        (error, results) => {
            if (error)
                throw error;
            res.status(201).json({ "Item eliminado": results.affectedRows });
        });
};
//ruta
app.route("/usuarios/:Documento").delete(deleteUsuarios);


module.exports = app;