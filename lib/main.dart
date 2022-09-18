import 'package:flutter/material.dart';
import 'auth/Login.dart';


void main() => runApp(const MyApp());
class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),

    );
  }

