import 'package:flutter/material.dart';
import 'package:xylophone/fragments/notificationPage.dart';
import 'package:xylophone/navigationDrawer/navigationDrawer.dart';
import 'dart:ui' as ui;

class profilePage extends StatefulWidget {
  static const String routeName = '/profilePage';

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  void playSound(int soundNumber) {
    //final player = AudioCache();
    //player.play('note$soundNumber.wav');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => notificationPage(soundNumber - 1),
      ),
    );
  }

  Expanded buildKey({Color color, int soundNumber, Image imageloader}) {
    return Expanded(
      child: FlatButton(
        //padding: EdgeInsets.all(10),

        //shape: new RoundedRectangleBorder(
        //  borderRadius: new BorderRadius.circular(30.0)),
        //color: color,
        //image: Image.asset(name)
        child: imageloader,

        //Image.asset('images/row-2-col-1.jpg'),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  mybody() {
    //var ui;
    return Container(
      child: Flexible(
        child: Text(
          'Suits Rocks 😁 '
          'Click On Tiles for different Songs',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(0, 20),
                  const Offset(150, 20),
                  <Color>[
                    Colors.red,
                    Colors.yellow,
                  ],
                )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Network Music'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black12,
        drawer: navigationDrawer(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // buildKey()
              mybody(),
              SizedBox(height: 20),
              //SizedBox(height: 100),
              buildKey(
                  imageloader: Image.asset(
                    'images/image_1_1.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  soundNumber: 1),

              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_2_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 2),
              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_3_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 3),
              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_4_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 4),
              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_5_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 5),
              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_6_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 6),
              SizedBox(height: 2),
              buildKey(
                  imageloader: Image.asset('images/image_7_1.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  soundNumber: 7),
            ],
          ),
        ));
  }
}
