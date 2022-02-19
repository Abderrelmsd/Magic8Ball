import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('8Ball'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          child: Image.asset('assets/images/ball$ballNumber.png'),
          onTap: () => setState(() {
            ballNumber = Random.secure().nextInt(4) + 1;
          }),
        ),
      ),
    );
  }
}
