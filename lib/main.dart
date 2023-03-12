import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.mp3'));
  }

  Expanded buildKey({required Color color,required int soundNumber}){
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: (){
            playSound(soundNumber);
          }, child: Text('')),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red,soundNumber: 1),
                buildKey(color: Colors.yellow,soundNumber: 2),
                buildKey(color: Colors.green,soundNumber: 3),
                buildKey(color: Colors.blue,soundNumber: 4),
                buildKey(color: Colors.pink,soundNumber: 5),
                buildKey(color: Colors.teal,soundNumber: 6),
                buildKey(color: Colors.purple,soundNumber: 7),
              ],
            ),
        ),
      ),
    );
  }
}


