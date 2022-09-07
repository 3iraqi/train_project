
import 'package:flutter/material.dart';

class ProductsModels
{
  int ?id;
  String ?name;
  String  image;
  String  ?price ;
  String ? oldPrice ;
  String ?brand;




  ProductsModels({
    @required this.id,
    required this.image,
   @ required this.price,
    @required this.oldPrice,
   @ required this.name,
    @required this.brand,




  });


}