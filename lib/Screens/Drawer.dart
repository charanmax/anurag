import 'package:anurag/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Anurag Group'),
            automaticallyImplyLeading: false,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.id);
            },
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            color: Colors.black54,
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            leading: Icon(Icons.announcement),
            title: Text(
              'News',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
