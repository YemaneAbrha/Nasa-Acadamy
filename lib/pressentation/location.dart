import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      // body: GoogleMap(
      //   mapType: MapType.hybrid,
      //   ini
      // ),
      drawer: SideBarDrawer(),
      bottomNavigationBar:
          ButtomNavigationBarContainer.getButtomNavigationBar(context),
    );
  }
}
