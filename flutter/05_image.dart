import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Image demo',
    home: new ImageDemo(),
  ));
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片控制"),
      ),
      body: new Column(
        children: <Widget>[
          new Image.network(
            'http://n.sinaimg.cn/transform/20150825/rsTR-fxhcvsc4370080.jpg',
            fit:BoxFit.contain,

          ),


        ],
      ),
    );
  }
}
