import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget buildKey(key) {
    var keys = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];
    return Expanded(
      child: FlatButton(
        child: SizedBox(width: double.infinity),
        color: keys[key - 1],
        onPressed: () {
          playSound(key);
        },
      ),
    );
  }

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                buildKey(1),
                buildKey(2),
                buildKey(3),
                buildKey(4),
                buildKey(5),
                buildKey(6),
                buildKey(7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//  key == 1
//             ? Colors.red
//             : key == 2
//                 ? Colors.orange
//                 : key == 3
//                     ? Colors.yellow
//                     : key == 4
//                         ? Colors.green
//                         : key == 5
//                             ? Colors.teal
//                             : key == 6
//                                 ? Colors.blue
//                                 : key == 7 ? Colors.purple : Colors.black,
