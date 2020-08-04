import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/navigationDrawer/navigationDrawer.dart';
import 'package:xylophone/fragments/MusicData.dart';
//class notificationPage extends StatelessWidget {

class notificationPage extends StatefulWidget {
  static const String routeName = '/notificationPage';
  int i;
  notificationPage(
    this.i,
  );

  @override
  _notificationPage createState() => _notificationPage();
}

class _notificationPage extends State<notificationPage> {
  AudioPlayer advancedPlayer = AudioPlayer();
  bool isPlaying;

  @override
  initState() {
    super.initState();
    advancedPlayer.pause();
    isPlaying = true;
    loadMusic();
  }

  Future loadMusic() async {
    advancedPlayer.play(musicUrl(widget.i));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () {
        advancedPlayer.pause();
        Navigator.pop(context);
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              width: size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white.withOpacity(0.2),
                child: Image(
                  image: AssetImage('assets/musicicon.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              onPressed: () {
                if (isPlaying) {
                  setState(() {
                    isPlaying = false;
                  });
                  advancedPlayer.pause();
                } else {
                  setState(() {
                    isPlaying = true;
                  });
                  advancedPlayer.resume();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
