import 'package:flutter/material.dart';
import 'package:flutter_project_api/pages/login_page.dart';
import 'package:flutter_project_api/pages/registro_page.dart';
import 'package:get/get.dart';

class PrincipalPage extends StatelessWidget {
  TextStyle stile = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter Project'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          const SizedBox(height: 100),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      color: Colors.green,
                      child: Text('Registro', style: stile),
                      onPressed: () {
                        Get.to(RegistroPage(), transition: Transition.fade);
                      })),
              const SizedBox(width: 5),
              Expanded(
                  child: ElevatedButton(
                      color: Colors.amber,
                      child: Text('Login', style: stile),
                      onPressed: () {
                        Get.to(LoginPage(), transition: Transition.zoom);
                      })),
            ],
          )
        ]));
  }
}
