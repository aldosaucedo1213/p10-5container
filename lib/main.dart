import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Desactiva la bandera de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Container Example',
            style: TextStyle(
              color: Colors
                  .white, // Cambié el color del texto a blanco para que contraste con el fondo azul
            ),
          ),
          backgroundColor: Colors.blue, // Fondo azul para la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Contenedor con fondo rojo para el nombre
              Container(
                color: Colors.red, // Fondo rojo
                padding: EdgeInsets.all(10),
                child: Text(
                  'Aldo Daniel Saucedo de Luna 22308051281310 6J',
                  style: TextStyle(
                    color: Colors
                        .white, // Texto en blanco para contrastar con el fondo rojo
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                  height:
                      20), // Espacio entre el contenedor rojo y el Container verde
              // Contenedor principal
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black, // Color del contorno
                    width: 2, // Grosor del contorno
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ], // Se añade el paréntesis de cierre aquí
                ),
                padding: EdgeInsets.all(20),
                child: Text(
                  'Hello! I am in the container widget decoration box!!',
                  style: TextStyle(
                    color: Color(0xff161111),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
