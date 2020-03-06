import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
//From nasa package.
import 'package:nasa/controller/apiFunction.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  // String imageurl = "https://nasa-academy.herokuapp.com/";
  @override
  Widget build(BuildContext context) {
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
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  final cachedImage = CachedNetworkImage(
                    imageUrl: snapshot.data[index].image,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  );
                  return SizedBox(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: cachedImage,
                        ),
                        Positioned(
                          bottom: 48.0,
                          left: 10.0,
                          right: 10.0,
                          child: Card(
                            elevation: 8.0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  subtitle: Text(
                                    snapshot.data[index].body,
                                    style: TextStyle(
                                      color: Colors.black,
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
