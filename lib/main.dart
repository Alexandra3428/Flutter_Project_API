import 'package:flutter/material.dart';
import 'package:flutter_project_api/pages/login_page.dart';
import 'package:flutter_project_api/pages/principal_page.dart';
import 'package:flutter_project_api/pages/registro_page.dart';
import 'package:get/get.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:viewport/viewport.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/pricipal',
      getPages: [
        GetPage(name: '/principal', page: () => PrincipalPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/registro', page: () => RegistroPage()),
      ],
    );
  }
}
