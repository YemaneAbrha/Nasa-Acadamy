// buttom Navigation bar
// contain the buttom navigation
import 'package:flutter/material.dart';
import 'package:nasa/pressentation/body/home.dart';
import 'package:nasa/pressentation/body/events.dart';
import 'package:nasa/pressentation/body/home.dart';

class ButtomNavigationBarContainer extends StatefulWidget {
  _ButtomNavigationBarContainerState createState() =>
      _ButtomNavigationBarContainerState();
}

class _ButtomNavigationBarContainerState
    extends State<ButtomNavigationBarContainer> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return getButtomNavigationBar(context);
  }

  Widget navigateToScreen(int index) {
    if (_selectedIndex == 0) {
      return HomePage();
    }
    if (_selectedIndex == 1) {
      return EventsPage();
    }
    if (_selectedIndex == 2) {
      return EventsPage();
    } else {
      return HomePage();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // _navigateToScreen(index);
  }

  getButtomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
