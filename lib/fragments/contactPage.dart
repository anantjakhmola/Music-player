import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:xylophone/navigationDrawer/navigationDrawer.dart';

class contactPage extends StatelessWidget {
  static const String routeName = '/contactPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      drawer: navigationDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/anant.jpg'),
              ),
            ),
            Text(
              'Anant Jakhmola',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Graphic Era University',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.black54,
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            Text(
              'Btech CSE 7th Semester',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.black54,
                fontSize: 20,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 150,
              height: 20,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              //color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              //padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.teal,
                ),
                title: Text(
                  'Department of Computer Science and Engineering',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              //padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'anant.flekdeno@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
