import 'package:get/get.dart';
import 'package:examen1/controller/image_change_controller.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        
        title: const Text('GALERIA DE IMAGENES',),
        backgroundColor: Colors.yellow[800],
      ),
      body:
      Container(
       color: Colors.black,
      child: Center(
        
        child: GetBuilder<ChangeImageController>(builder: (select) {
          return Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  select.changeImagesRL(0);
                },
                icon: const Icon(Icons.arrow_back_ios,size: 50,color: Colors.white,)),
            Container(
               margin: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                ),
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                    
                    borderRadius: new BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        select.listimagenes ),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: const [
                       BoxShadow(
                        //SOMBRA
                        color: Colors.yellow,
                        blurRadius: 10,
                      
                      ),
                    ]),),
            IconButton(
                onPressed: () {
                  select.changeImagesRL(1);
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 50,color: Colors.white,))
          ],
          );
        }),
      )),
    );
  }
}
