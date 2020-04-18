import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {
  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  BorderRadiusGeometry _border = BorderRadius.circular(10.0);
  Color _color = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate Container Page'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _border,
            color: _color
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _setProperties();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _setProperties() {
    setState(() {
      _width = Random().nextInt(300).toDouble();
      _height = Random().nextInt(300).toDouble();
      _color = Color.fromRGBO(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        1);
       _border = BorderRadius.circular(Random().nextInt(100).toDouble()); 
    });
  }
}