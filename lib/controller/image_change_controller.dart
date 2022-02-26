import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeImageController extends GetxController{
 @override
  void onInit() {
    super.onInit();
    chaneImages();
  }

  int indexImage = 0;
  List<String> images = [
    'https://images.unsplash.com/photo-1605979257913-1704eb7b6246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1613771404721-1f92d799e49f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9rZW1vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1627856013091-fed6e4e30025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9rZW1vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1611931960487-4932667079f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ];
  String listimagenes = '';

  void chaneImages() {
    listimagenes = images.first;
    update();
  }

  void changeImagesRL(int valor) {
    if (valor == 1) {
      if (indexImage == 4) {
        indexImage = 0;
      } else {
        indexImage++;
      }
      listimagenes = images[indexImage];
    } else {
      if (indexImage == 0) {
        indexImage = 4;
      } else {
        indexImage--;
      }
      listimagenes = images[indexImage];
    }
    update();
  }
}