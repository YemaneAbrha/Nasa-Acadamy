import 'dart:async';
import 'package:flutter/material.dart';

// import 'package:nasa/pressentation/common/basicappbar.dart';
// import 'package:nasa/pressentation/common/buttomNavigation.dart';
// import 'package:nasa/pressentation/common/sidebar.dart';
import 'package:nasa/controller/apiFunction.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // backgroundColor: Color.fromRGBO(235, 237, 240, 1.0),
    // appBar: BasicAppBar.getAppBar(context),
    // body:

    return Container(
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
              print(snapshot.data[0].title);
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 200,
                    height: 300,
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
                              image:
                                  ExactAssetImage('assets/images/birthday.jpg'),
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
                          child: Card(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  subtitle: Text(
                                    snapshot.data[index].body,
                                    style: TextStyle(
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
