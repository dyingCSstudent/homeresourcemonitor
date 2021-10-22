import 'package:flutter/material.dart';
import 'package:homeresourcemonitor/register.dart';
import './random_words.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: RegisterPage());
  }
}
