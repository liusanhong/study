import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Container demo',
    home: new ContainerDemo(),
  ));
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 300,
        height: 300,
        decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(150)),
          border: new Border.all(
            color: const Color(0xFF00ff00),
            width: 3,
          ),
          color: const Color(0xFFFF0000),
        ),
        child: new Text(
          "hahaha",
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: const Color(0xFF000000),
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
