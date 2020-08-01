import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dart:ui' as ui;

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Simple Music App'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black12,
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
        ),
      ),
    );
  }
}

musicPlayer() {
  var audio = AudioPlayer();

  var playerBody = Container(
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 350,
          height: 400,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            //color: Colors.grey,
            child: GestureDetector(
                //splashColor: Colors.blue.withOpacity(0.3),
//              onPanUpdate: (details) {
//                if (details.delta.dx > 0) {
//                  playPrevSong();
//                } else if (details.delta.dx < 0) {
//                  playNextSong();
//                }
//              },
//              onTap: () {
//                print("Toggling Lyrics!");
//                Fluttertoast.showToast(
//                  msg: "This is Center Short Toast",
//                  toastLength: Toast.LENGTH_SHORT,
//                  gravity: ToastGravity.CENTER,
//                  timeInSecForIosWeb: 1,
//                  backgroundColor: Colors.grey,
//                  textColor: Colors.white,
//                  fontSize: 16.0,
//                );
//              },
                //child: Image.asset('images/flutter-image.jpg'),
                ),
            elevation: 10,
          ),
        ),
        Container(
          width: 350,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              RangeSlider(values: RangeValues(0, 0), onChanged: null),
              Row(
                children: <Widget>[
                  Text("0:00"),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              IconButton(
//                iconSize: 50,
//                icon: Icon(Icons.skip_previous),
//                onPressed: playPrevSong,
//              ),
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  print("Playing!");
                  audio.play(
                    'https://file-examples-com.github.io/uploads/2017/11/file_example_WAV_1MG.wav',
                  );
                },
              ),
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.pause),
                onPressed: () {
                  print("Paused!");
                  audio.pause();
                },
              ),
//              IconButton(
//                iconSize: 50,
//                icon: Icon(Icons.skip_next),
//                onPressed: playNextSong,
//              ),
            ],
          ),
        ),
      ],
    ),
  );
}
