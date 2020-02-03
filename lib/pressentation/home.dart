import 'package:flutter/material.dart';
import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                  Container(),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      "This will be the description part",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: SideBarDrawer(),
      bottomNavigationBar:
          ButtomNavigationBarContainer.getButtomNavigationBar(context),
    );
  }
}
