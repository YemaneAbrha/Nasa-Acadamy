import 'package:flutter/material.dart';
import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
        child: ListView(
          children: <Widget>[],
        ),
      ),
      drawer: SideBarDrawer(),
      bottomNavigationBar: ButtomNavigationBarContainer(),
    );
  }
}
