import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      image: ExactAssetImage('assets/images/enjoy.jpg'),
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
                    "የናሳ ትምህርት ቤት ተማሪዎች መዝናኛ ቦታ ሂደዉ ከ ጎደኞቻቸዉ ጋ ሲዝናኑ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
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
                      image: ExactAssetImage('assets/images/culturDay.jpg'),
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
                    "የናሳ ትምህርት ቤት ተማሪዎች የ ብሔር፡ብሔረሰዎች በዓል ሲያከብሩ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
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
                      image: ExactAssetImage('assets/images/graduation.jpg'),
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
                    "የናሳ ትምህርት ቤት ተማሪዎች የ ምርቃት ስነ ፡ ስርኣት",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
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
                      image: ExactAssetImage('assets/images/self.jpg'),
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
                    " የናሳ ትምህርት ቤት ተማሪዎች ለ ሜሪ ፡ ጆይ ኢትዮጽያ  ድጋፍ ሲያደርጉ",
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
    );
  }
}
