import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String subject, message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Nasa Acadamy"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 10.0),
        child: Center(
          child: ListView(children: <Widget>[
            TextField(
              decoration: new InputDecoration(
                  icon: Icon(Icons.subject),
                  labelText: "Subject",
                  labelStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              keyboardType: TextInputType.text,
              onChanged: (String value) {
                setState(() {
                  subject = value;
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              maxLength: 300,
              maxLines: 4,
              decoration: new InputDecoration(
                  icon: Icon(Icons.message),
                  labelText: "Message",
                  labelStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              keyboardType: TextInputType.text,
              onChanged: (String value) {
                setState(() {
                  message = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(70.0, 0.0, 50.0, 0.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 150.0,
                height: 45,
                color: Color.fromRGBO(0, 136, 204, 0.8),
                child: new Text(' NOTIFAY',
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Map<String, dynamic> body = {
                    'subject': subject,
                    'message': message,
                  };
                  print("I have sent the request ....");
                  print(body);
                  // requestSignup(context, body);
                },
              ),
              // ),
            ),
          ]),
        ),
      ),
    );
  }
}
