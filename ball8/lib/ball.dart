import 'dart:math';
import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball> {
  int ballNumber = 1;

  void changeAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeAnswer();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
