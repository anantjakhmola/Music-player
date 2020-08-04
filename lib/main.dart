import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/fragments/contactPage.dart';
import 'package:xylophone/fragments/eventPage.dart';
import 'package:xylophone/fragments/homePage.dart';
import 'package:xylophone/fragments/notificationPage.dart';
import 'package:xylophone/fragments/profilePage.dart';
import 'package:xylophone/routes/pageRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //var pageRoutes;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
      routes: {
        pageRoutes.home: (context) => homePage(),
        pageRoutes.contact: (context) => contactPage(),
        pageRoutes.event: (context) => eventPage(),
        pageRoutes.profile: (context) => profilePage(),
      },
    );
  }
}
