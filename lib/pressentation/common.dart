import 'package:flutter/material.dart';

import 'package:nasa/pressentation/common/basicappbar.dart';
// import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';
import 'package:nasa/pressentation/body/home.dart';
import 'package:nasa/pressentation/body/events.dart';
import 'package:nasa/pressentation/body/message.dart';

class CommonPage extends StatefulWidget {
  @override
  _CommonPageState createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget navigateToScreen() {
    if (_selectedIndex == 0) {
      return HomePage();
    }
    if (_selectedIndex == 1) {
      return MessagePage();
    }
    if (_selectedIndex == 2) {
      return EventsPage();
    } else {
      return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      drawer: SideBarDrawer(),
      body: navigateToScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Message"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("Event"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(0, 141, 81, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }
}
