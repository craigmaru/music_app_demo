import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const MusicApp(),
    );

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  static AudioCache player = AudioCache();

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  buildKey(note, color, music) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(music);
        },
        child: Text("$note"),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey("note1", const Color.fromARGB(255, 251, 0, 0), 1),
            buildKey("note2", const Color.fromARGB(255, 244, 244, 0), 2),
            buildKey("note3", const Color.fromARGB(255, 69, 255, 7), 3),
            buildKey("note4", const Color.fromARGB(255, 7, 255, 243), 4),
            buildKey("note5", const Color.fromARGB(255, 8, 56, 247), 5),
            buildKey("note6", const Color.fromARGB(255, 189, 7, 255), 6),
            buildKey("note7", const Color.fromARGB(255, 35, 0, 21), 7),
          ],
        ),
      ),
    ));
  }
}
