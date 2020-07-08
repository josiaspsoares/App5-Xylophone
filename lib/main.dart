import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.orange, soundNumber: 2),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.yellow, soundNumber: 3),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.green, soundNumber: 4),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.teal, soundNumber: 5),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.blue, soundNumber: 6),
                Padding(padding: EdgeInsets.all(15.0)),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
