import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     home:BallPen(),
    ),
  );
}
class BallPen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('Ask Me Anything'),),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num=1;
  void rand(){
    setState(() {
      num=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(onPressed:rand,child: Image.asset('images/ball$num.png')),
        ),
      ],
    );
  }
}






