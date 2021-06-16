import 'package:flutter/material.dart';
import 'dart:math';
import 'package:cache_audio_player/cache_audio_player.dart';

void main() => runApp(
      MaterialApp(
         home: ballPage(),
      ),
    );


class ballPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return  Scaffold(
  backgroundColor: Colors.blue[500],
  appBar: AppBar(

    backgroundColor: Colors.blue[900],
    title: Center(
      child: Text(
        'Ask Me Anything',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),

      ),
    ),
  ),
  body:Ball(),
);
}
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
              BallNumber=Random().nextInt(5)+1;

            });
          },
          child: Image(
            image: AssetImage('images/ball$BallNumber.png'),
          ),
        ),
      ),
    );
  }
}
