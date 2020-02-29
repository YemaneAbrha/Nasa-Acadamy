import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Vision"),
              subtitle: Text(
                  "The school will be a diverse community engaged in the in the process of preparing our students to live exemplary lives, committed to sharing wisdom, showing courage and supporting in the country in 2025."),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Mission"),
              subtitle: Text(
                  "Nasa academy is dedicated to satisfy customers, deliver quality educational service create good public image , create good market share and develop employees in the next three years."),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Mission"),
              subtitle: Text(
                  "Nasa academy is a diverse community preparing students to live exemplary lives, committed to sharing wisdom, showing courage, and promote in orientation. "),
            ),
          ),
        ],
      ),
    );
  }
}
