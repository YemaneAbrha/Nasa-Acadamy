import 'dart:async';
import 'package:flutter/material.dart';

import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';
import 'package:nasa/controller/apiFunction.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
        child: FutureBuilder(
            future: getEvent(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text("There Is Data");
                  },
                );
              }
            }),
      ),
      drawer: SideBarDrawer(),
      bottomNavigationBar:
          ButtomNavigationBarContainer.getButtomNavigationBar(context),
    );
  }
}
