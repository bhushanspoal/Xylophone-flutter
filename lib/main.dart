import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(xylophone());
}
class xylophone extends StatefulWidget {
  @override
  _xylophoneState createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void soundnumber( int SoundNumber){
    final player=AudioCache();
    player.play('note$SoundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                    color: Colors.red,
                    onPressed: (){
                     soundnumber(1);
                    },
                    ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                    soundnumber(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    soundnumber(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: (){
                   soundnumber(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                  soundnumber(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.indigo,
                  onPressed: (){
                   soundnumber(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: (){
                   soundnumber(7);
                  },
                ),
              ),
            ],
          ),
          ),
        ),
      );
  }
}

