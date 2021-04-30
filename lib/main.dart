import "package:flutter/material.dart";
import 'package:flutter_login_app/app_example/Login_Screen.dart';
import 'package:flutter_login_app/FilmBilgiTesti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
       routes: {
         "/": (context) => LoginPage(),
         "/FilmBilgiTesti": (context) => FilmBilgiTesti(),
       });
  }
}