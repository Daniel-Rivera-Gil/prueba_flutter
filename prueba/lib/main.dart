import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prueba/my_home_page.dart';

import 'dynamic_list.dart';

Future<void> main() async {
  //await obtenerDatos(); 
  //log("Que pasa,me imprimo primero");
  runApp(
      const MyApp()
  );
  
}


Future<void> obtenerDatos() async {
  log("Empezó.....");
  await Future.delayed(Duration(seconds: 2),() {
    log("Estoy dentro");
  });

  log("Me saludó");
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: '',),
    );
  }
}

