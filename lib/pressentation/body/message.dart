import 'package:flutter/material.dart';
import 'package:nasa/controller/apiFunction.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: getMessage(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(
                      // backgroundColor: Color.fromRGBO(0, 141, 81, 1.0),
                      ),
                ),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.school),
                          title: Text(snapshot.data[index]["body"]),
                        ),
                      ),
                    ],
                  );
                },
              );
            } else {
              return Container(
                child: Center(
                  child: Text("Error .."),
                ),
              );
            }
          }),
    );
  }
}
