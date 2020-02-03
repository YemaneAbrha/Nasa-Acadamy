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
      backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/birthday.jpg'),
                        fit: BoxFit.fill,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(1),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      "የ ናሳ ትምህርት ቤት ተማሪዎች ልደትን ሲያከብሩ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/lab.jpg'),
                        fit: BoxFit.fill,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(1),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      "የ ናሳ ትምህርት ቤት ተማሪዎች ቤተ፡ሙከራ ላይ ሁነው",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/labcolor.jpg'),
                        fit: BoxFit.fill,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(1),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      "የ ናሳ ትምህርት ቤት ተማሪዎች ቤተ፡ሙከራ ላይ ሁነው",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/water.JPG'),
                        fit: BoxFit.fill,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(1),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      " የ  ናሳ ትምህርት ቤት ተማሪዎች water park ሂደው ሲዝናኑ",
                      style: TextStyle(
                        color: Colors.black,
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
