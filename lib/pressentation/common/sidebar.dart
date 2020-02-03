// side bar contain and control the side bar
import 'package:flutter/material.dart';

class SideBarDrawer extends StatefulWidget {
  @override
  _SideBarDrawerState createState() => _SideBarDrawerState();
}

class _SideBarDrawerState extends State<SideBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            // DrawerHeader(
            //     // Padding: const EdgeInsets.all(10.0);
            //     ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text("About",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact Us",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.place),
              title: Text("Location",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
