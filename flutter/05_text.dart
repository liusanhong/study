import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Text demo',
    home: new TextDemo(),
  ));
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("文本控制"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            "红色+黑色删除线+25号",
            style: new TextStyle(
              color: const Color(0xFFFF0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xFF000000),
              fontSize: 25,
            ),
          ),
          new Text(
            "绿色+下划线+加粗+25号",
            style: new TextStyle(
              color: const Color(0xFF00ff00),
              decoration: TextDecoration.underline,
//              decorationColor: const Color(0xFF000000),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
