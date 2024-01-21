// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smartbapp/models/productSolidInCash.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


class productSolidInCashProvider extends ChangeNotifier{
  static const apiEndPoint = 'http://192.168.43.3:8000/api/product-solid-in-cash';

  bool isLoading = true;
  String error = '';

  ProductsSoldinCash productSolid = ProductsSoldinCash(results : []);

  getDataFromApi() async{
    try{
     Response response = (await http.get(Uri.parse(apiEndPoint)));
     if (response.statusCode == 200){
      productSolid = productsSoldinCashFromJson(response.body);
     }else{
      error = response.statusCode.toString();
     }
    }catch(e){
      error= e.toString();
      
    }
    isLoading = false;
    notifyListeners();
  }

}