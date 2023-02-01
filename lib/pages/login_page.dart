import 'package:flutter/material.dart';
import 'package:flutter_project_api/controllers/login_controller.dart';
import 'package:get/state_manager.dart';

class LoginPage extends StatelessWidget {
  String correo = 'correo', password = 'password';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Login'),
              ),
              body: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Formulario de login',
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
                          child: Text('Login'),
                          onPressed: () {
                            //Accion
                          })
                    ],
                  )));
        });
  }
}
