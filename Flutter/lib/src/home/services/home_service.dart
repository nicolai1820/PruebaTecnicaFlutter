import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/home/models/data_model.dart';

class HomeService {
  HomeService._privateConstructor();

  static final HomeService _instance = HomeService._privateConstructor();

  factory HomeService() {
    return _instance;
    
  }
final _dio = Dio();
Future <List<Result>> ongetdata() async {
   const String baseUrl = "https://randomuser.me/api/?results=5";
  // const Map<String,String> header={"Authorization": "Basic ODMwMDg3NjY2OjRzYzNuczEwTi4yMDIxKg=="};
try {
  final resp = await _dio.get(baseUrl);
  DataModel respuesta =dataModelFromJson(jsonEncode(resp.data));
  List<Result> contacts = respuesta.results!;
  print(respuesta);
  return contacts;
} catch (e) {
  print(e);
  return [];
}
  }




}
