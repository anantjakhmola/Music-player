import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage('images/bg_header.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 2.0,
            left: 12.0,
            child: Text("Welcome to Flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold))),
      ]));
}
