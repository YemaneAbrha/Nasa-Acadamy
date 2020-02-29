import 'package:flutter/material.dart';

import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/body/home.dart';
import 'package:nasa/pressentation/body/events.dart';
import 'package:nasa/pressentation/body/message.dart';
import 'package:nasa/pressentation/body/about.dart';
import 'package:nasa/pressentation/body/location.dart';
// import 'package:nasa/pressentation/body/about.dart';

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
                Text("NASA JSAKDKSDJ KJKSAJSKDJ JKDSSAJK"),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/self.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //  child: Container(
          // child:
          // ListView(
          //   children: <Widget>[
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
            leading: Icon(Icons.contact_mail),
            title: Text("Contact Us",
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
          ListTile(
            leading: Icon(Icons.place),
            title: Text("Location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                )),
            onTap: () {
              setState(() {
                _pageSelector = 5;
              });
            },
          ),
          // ],
          // ),
          // ),
        ],
      ),
    );
  }

  _drawerList() {
    return Drawer(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'John Doe',
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // ListView(
          //   padding: EdgeInsets.zero,
          //   children: <Widget>[
          ListTile(
              // Some Code
              ),
          ListTile(
              // Some Code
              ),
          ListTile(
              // Some Code
              ),
          ListTile(
              // Some Code
              ),
          ListTile(
              // Some Code
              ),
          // ],
          // ),
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
    // if (_pageSelector == 4) {
    //   return AboutPage();
    // }
    if (_pageSelector == 5) {
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
      // drawer: _drawerList(),
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
