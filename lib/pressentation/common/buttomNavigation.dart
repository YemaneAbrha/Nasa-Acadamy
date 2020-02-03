// buttom Navigation bar
// contain the buttom navigation
import 'package:flutter/material.dart';

class ButtomNavigationBarContainer {
  static getButtomNavigationBar() {
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
    );
  }
}
