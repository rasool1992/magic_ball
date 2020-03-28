import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          title: Text('Magic Ball'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int changeBallNum = 1;
  void changeBall() {
    changeBallNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$changeBallNum.png'),
              onPressed: () {
                setState(() {
                  changeBall();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
