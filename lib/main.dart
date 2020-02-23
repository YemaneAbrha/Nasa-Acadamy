import 'package:flutter/material.dart';
import 'package:nasa/pressentation/home.dart';
import 'package:nasa/pressentation/about.dart';
import 'package:nasa/pressentation/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/about": (BuildContext context) => AboutPage(),
        "/location": (BuildContext context) => LocationPage(),
      },
      title: 'Nasa Acadamy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

