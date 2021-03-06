import 'package:flutter/material.dart';
import 'user_registration/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
