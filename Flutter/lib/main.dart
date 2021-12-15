import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/page/detalle_page.dart';
import 'package:flutter_application_1/src/home/page/home_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      initialRoute: "/homepage",
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/homepage", page:()=>  Homepage() ),
        GetPage(name: "/detallepage", page:()=>  DetallePage() )
      ],
    );
  }
}