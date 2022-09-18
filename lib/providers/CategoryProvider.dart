import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../model/Catogry_Model.dart';


class CategoryProvider with ChangeNotifier{
  AllCategory? data;
  String? token;
  Future<dynamic>getAllData()async{
    var dio=Dio();
    dio.options.headers={
      "lang":"en",
      "Content-Type":"application/json",
      "Authorization":token,
      };
    
    final response=await dio.get("https://student.valuxapps.com/api/categories");
    data =AllCategory.fromJson(response.data);
    notifyListeners();
  }
}
