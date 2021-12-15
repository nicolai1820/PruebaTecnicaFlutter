import 'package:flutter_application_1/src/home/models/data_model.dart';
import 'package:flutter_application_1/src/home/services/home_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
final servicedata=HomeService();
 // ignore: non_constant_identifier_names
 var ServiciosListos = false.obs;
@override
  void onInit() async {
    await cargardata();
    ServiciosListos.value=true;
    super.onInit();
    
  }
 
  var listdata = RxList<Result>();
 

Future cargardata() async{
  
  List<Result> contacts= await servicedata.ongetdata();
  print(contacts);
for (var item in contacts) {
  listdata.add(item);
}
}

  

}
