import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/controllers/homepage_controler.dart';
import 'package:flutter_application_1/src/home/page/detalle_page.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  final homeCtrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeUsers"),
        centerTitle: true,
      ),
      body: Obx(() => SingleChildScrollView(
          child: homeCtrl.ServiciosListos.value
              ? Column(
                  children: [
                    
                    Container(
                      height: Get.height,
                      child: ListView.builder(
                          itemCount: homeCtrl.listdata.length,
                          // itemCount:  100,
                          itemBuilder: (_, index) {
                            print(index);
                            print(homeCtrl.listdata[index].name!.first);
                            print("aquitoy");
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print("aquitoy2");
                                    print(homeCtrl.listdata[index].name!.first);
                                    Get.to(()=>DetallePage(), arguments: [
                                      {
                                        "Nombre": homeCtrl
                                            .listdata[index].name!.first,
                                        "ImagenDePerfil": homeCtrl
                                            .listdata[index].picture!.large!,
                                        "Index": index,
                                        "Genero": homeCtrl
                                            .listdata[index].gender,
                                        "Ciudad":homeCtrl
                                            .listdata[index].location!.city,
                                        "Pais":homeCtrl
                                            .listdata[index].location!.country,
                                        "PostCode":homeCtrl
                                            .listdata[index].location!.postcode.toString(),
                                        "Email":homeCtrl
                                            .listdata[index].email,
                                        "Telefono":homeCtrl
                                            .listdata[index].phone,
                                        "Celular":homeCtrl
                                            .listdata[index].cell

                                      },
                                    ]
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(
                                        homeCtrl.listdata[index].name!.first!),
                                    subtitle:
                                        Text(homeCtrl.listdata[index].phone!),
                                    leading: CircleAvatar(
                                      child: Image.network(homeCtrl
                                          .listdata[index].picture!.large!),
                                    ),
                                  ),
                                ),
                                Divider()
                              ],
                            );
                          }),
                    )
                  ],
                )
              : Container())),
      
     
    );
  }
}
