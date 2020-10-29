import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  static String id = 'AnimatedPage';
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
//  double _width = 200.0;
//  double _height = 200.0;
//  double _finalHeight = 300.0;
//  Color _color = Colors.black38;
//  Color _finalColor = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);
    final  _width = rnd.nextInt(300).toDouble() + 50.0;
    final  _height = rnd.nextInt(300).toDouble() + 50.0;    
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.gesture),
          onPressed: () {
            setState(() {
            });
          }),
      body: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedContainer(
            curve: Curves.elasticInOut,
            duration: Duration(seconds: 1),
            width: _width,
            height: _height,
            color: Color.fromRGBO(r, g, b, 1.0),
            child: Center(
              child: Text(
                'INGRESAR',
                style: TextStyle(
                    color: Colors.white, fontSize: 24.0, letterSpacing: 2.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
