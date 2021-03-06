import 'package:flutter/material.dart';

import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/body/home.dart';
import 'package:nasa/pressentation/body/events.dart';
import 'package:nasa/pressentation/body/message.dart';
import 'package:nasa/pressentation/body/about.dart';
import 'package:nasa/pressentation/body/location.dart';

class CommonPage extends StatefulWidget {
  @override
  _CommonPageState createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  int _selectedIndex = 0;
  int _pageSelector = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageSelector = _selectedIndex;
    });
  }

  Widget _sideBarDrawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "NASA ( NATURALIST ABLE OF SCHOLAR ACADEMY )",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/self.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("About",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                )),
            onTap: () {
              setState(() {
                _pageSelector = 3;
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text("Location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                )),
            onTap: () {
              setState(() {
                _pageSelector = 4;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget navigateToScreen() {
    if (_pageSelector == 0) {
      return HomePage();
    }
    if (_pageSelector == 1) {
      return MessagePage();
    }
    if (_pageSelector == 2) {
      return EventsPage();
    }
    if (_pageSelector == 3) {
      return AboutPage();
    }
    if (_pageSelector == 4) {
      return LocationPage();
    } else {
      return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      drawer: _sideBarDrawer(),
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
