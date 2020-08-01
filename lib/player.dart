import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

playPrevSong() {
  print("Previous Song!");
  Fluttertoast.showToast(
    msg: "Previous Song",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

playNextSong() {
  print("Next Song!");
  Fluttertoast.showToast(
    msg: "Next Song",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0,
  );
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
              onPanUpdate: (details) {
                if (details.delta.dx > 0) {
                  playPrevSong();
                } else if (details.delta.dx < 0) {
                  playNextSong();
                }
              },
              onTap: () {
                print("Toggling Lyrics!");
                Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: Image.asset('images/flutter-image.jpg'),
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
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.skip_previous),
                onPressed: playPrevSong,
              ),
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
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.skip_next),
                onPressed: playNextSong,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print("Back Button Pressed!");
          },
        ),
        title: Text("Music Player"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print("Settings");
            },
          ),
        ],
      ),
      body: playerBody,
    ),
    debugShowCheckedModeBanner: false,
  );
}
