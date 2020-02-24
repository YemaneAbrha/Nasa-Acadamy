import 'package:flutter/material.dart';
import 'package:nasa/pressentation/common/basicappbar.dart';
import 'package:nasa/pressentation/common/buttomNavigation.dart';
import 'package:nasa/pressentation/common/sidebar.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                        image: ExactAssetImage('assets/images/school.jpg'),
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
                    child: ListView(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "About",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            "Nasa Acadamy Organized in 2010 and it has two compus in both Sefera goro and Holy ..")
                      ],
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
                        image: ExactAssetImage('assets/images/school2.png'),
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
                    child: ListView(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Objective",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            "Objective of nasa Acadamy is to bla bla bla ..... educate our children")
                      ],
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
                        image: ExactAssetImage('assets/images/school3.png'),
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
                    child: ListView(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Misssion",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            "This is the image ins isi  is s is s iss isis issis isissis"),
                      ],
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
                      "Vission",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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
      bottomNavigationBar: ButtomNavigationBarContainer(),
    );
  }
}
