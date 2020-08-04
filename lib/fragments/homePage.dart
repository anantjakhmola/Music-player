import 'package:flutter/material.dart';

import 'package:xylophone/navigationDrawer/navigationDrawer.dart';

import 'package:audioplayers/audio_cache.dart';
import 'dart:ui' as ui;

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

//class homePage extends StatelessWidget {
//  void playSound(int soundNumber) {
//  final player = AudioCache();
//  player.play('note$soundNumber.wav');
//
//  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        //padding: EdgeInsets.all(10),

        //shape: new RoundedRectangleBorder(
        //  borderRadius: new BorderRadius.circular(30.0)),
        color: color,
        //image: Image.asset(name)
        //child: imageloader,
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
      child: Text(
        'Click on Tiles for Music',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Simple Xylophone'),
          backgroundColor: Colors.orangeAccent,
        ),
        backgroundColor: Colors.black26,
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
//                  imageloader: Image.asset(
//                    'images/image_1_1.jpeg',
//                    fit: BoxFit.cover,
//                    width: double.infinity,
//                  ),
                  color: Colors.white,
                  soundNumber: 1),

              SizedBox(height: 2),
              buildKey(
                  //imageloader: Image.asset('images/image_2_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.black,
                  soundNumber: 2),
              SizedBox(height: 2),
              buildKey(
//                  imageloader: Image.asset('images/image_3_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.white,
                  soundNumber: 3),
              SizedBox(height: 2),
              buildKey(
//                  imageloader: Image.asset('images/image_4_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.black,
                  soundNumber: 4),
              SizedBox(height: 2),
              buildKey(
//                  imageloader: Image.asset('images/image_5_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.white,
                  soundNumber: 5),
              SizedBox(height: 2),
              buildKey(
//                  imageloader: Image.asset('images/image_6_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.black,
                  soundNumber: 6),
              SizedBox(height: 2),
              buildKey(
//                  imageloader: Image.asset('images/image_7_1.jpeg',
//                      fit: BoxFit.cover,
//                      width: double.infinity,
//                      height: double.infinity),
                  color: Colors.white,
                  soundNumber: 7),
            ],
          ),
        ));
  }
}
