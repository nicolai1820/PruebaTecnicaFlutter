// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var detalles = Get.arguments;
    print(detalles);
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _imagenPerfil(detalles),
              SizedBox(
                height: 30,
              ),
              _infoPerfil(detalles),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }

  Container _infoPerfil(detalles) {

    return Container(
            color: Colors.white,
            
            width: Get.width * 0.9,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Nombre:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Nombre"],
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       Text(
                        "Género:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Genero"],
                       style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       Text(
                        "Ciudad:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Ciudad"],
                      style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       Text(
                        "País:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Pais"],
                      style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [ Text(
                        "Código Postal:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["PostCode"],
                      style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [ Text(
                        "Email:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(detalles[0]["Email"],
                        style: TextStyle(fontSize: 17)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [ Text(
                        "Teléfono Fijo:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Telefono"],
                      style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [ Text(
                        "Celular:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(detalles[0]["Celular"],
                      style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
          );
  }

  Container _imagenPerfil(detalles) {
    return Container(
            padding: EdgeInsets.only(top: Get.height * 0.04),
            child: AvatarView(
              radius: 90,
              borderColor: Colors.black54,
              avatarType: AvatarType.CIRCLE,
              backgroundColor: Colors.red,
              imagePath: detalles[0]["ImagenDePerfil"],
              placeHolder: Container(
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              errorWidget: Container(
                child: Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          );
  }
}
