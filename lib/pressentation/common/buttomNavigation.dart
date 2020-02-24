// buttom Navigation bar
// contain the buttom navigation
import 'package:flutter/material.dart';

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

  void _navigateToScreen(int index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    }
    if (index == 1) {
      Navigator.pushReplacementNamed(context, '/location');
    }
    if (index == 2) {
      Navigator.pushReplacementNamed(context, '/events');
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _navigateToScreen(index);
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
