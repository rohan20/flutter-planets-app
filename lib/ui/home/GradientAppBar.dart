import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {

  final String title;
  final double appBarHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: appBarHeight,
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Center(
        child: new Text(title),
      ),
    );
  }


}
