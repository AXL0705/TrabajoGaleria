import 'package:examen1/controller/image_change_controller.dart';
import 'package:examen1/pages/image_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ChangeImageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba2',
      initialRoute: '/galeriaimg',
      routes: {
        '/galeriaimg':(context)=> const ImagePage()
      },
    );
  }
}
