// ignore_for_file: unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:smartbapp/models/CustomerDetailsModel.dart';
import 'package:http/http.dart' as http;

class CustomerDetailsModelProvider extends ChangeNotifier{
  static const apiEndPoint = 'http://192.168.43.3:8000/api/customers-details/';
  bool isLoading = true;
  String error = '';
  CustomerDetailsModel customers = CustomerDetailsModel(results: [] );

  getDataFromApi() async{

    try{
      Response response = await http.get(Uri.parse(apiEndPoint));

      if(response.statusCode == 200){
        customers = customerDetailsModelFromJson(response.body);
      }else{
        error = response.statusCode.toString();
      }
    }
    catch(e){
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();

  }
}