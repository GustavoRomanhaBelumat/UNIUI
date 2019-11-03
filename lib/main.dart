import 'package:flutter/material.dart';
import './PageContainer/WelcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNI (Alfa Build 0.2)',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      initialRoute: 'WelcomePage',
      routes: {'WelcomePage': (context) => WelcomePage()},
    );
  }
}
