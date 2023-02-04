import 'package:flutter/material.dart';
import 'package:restful_api_google/screens/home.dart';
//refer this blog for understanding the complete code
//https://medium.com/google-developer-experts/working-with-rest-apis-flutter-f3c8c673f1dc
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}