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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  getButtomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Message'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text("Notification"),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
