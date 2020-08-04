import 'package:flutter/material.dart';
import 'package:xylophone/navigationDrawer/navigationDrawer.dart';
import 'package:xylophone/screens/home_screen.dart';
import 'package:xylophone/screens/home_screen.dart';

//void main() => runApp(MyApp());

class eventPage extends StatelessWidget {
  static const String routeName = '/eventPage';

//class eventPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter YouTube Channel'),
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primaryColor: Colors.red,
      ),
      drawer: navigationDrawer(),
      body: HomeScreen(),
    );
  }
}
