import 'package:flutter/material.dart';

// From nasa package
import 'package:nasa/pressentation/body/home.dart';
import 'package:nasa/pressentation/body/about.dart';
import 'package:nasa/pressentation/body/location.dart';
import 'package:nasa/pressentation/body/events.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/about": (BuildContext context) => AboutPage(),
        "/location": (BuildContext context) => LocationPage(),
        "/events": (BuildContext context) => EventsPage(),
      },
      title: 'ናሳ ት/ቤት',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
