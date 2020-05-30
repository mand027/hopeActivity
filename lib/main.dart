import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Miku norteña',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.redAccent, nota: 1)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.lightGreen, nota: 2)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.redAccent, nota: 3)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.blue, nota: 4)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.red, nota: 5)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.yellow, nota: 6)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.deepPurple, nota: 7)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.lightGreen, nota: 8)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.blueAccent, nota: 9)
                ],
              ),
              Row(
                children: <Widget>[
                  creaTecla(color: Colors.lightGreenAccent, nota: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }
  Expanded creaTecla({Color color, int nota}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color
      )
    );
  }

}

