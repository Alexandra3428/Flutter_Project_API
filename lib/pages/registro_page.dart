import 'package:flutter/material.dart';
import 'package:flutter_project_api/controllers/registro_controller.dart';
import 'package:get/get.dart';

class RegistroPage extends StatelessWidget {
  String correo = 'correo', password = 'pasaword';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistroController>(
        init: RegistroController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Registro'),
              ),
              body: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Formulario de Registro',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Correo:  ')),
                          Expanded(child: TextField(
                            onChanged: (value) {
                              correo = value;
                            },
                          ))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(child: Text('Password:  ')),
                          Expanded(
                              child: TextField(
                                  obscureText: true,
                                  onChanged: (value) {
                                    password = value;
                                  }))
                        ],
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                          child: Text('Registrar'),
                          onPressed: () {
                            //Accion
                          })
                    ],
                  )));
        });
  }
}
