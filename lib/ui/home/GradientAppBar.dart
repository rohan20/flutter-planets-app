import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {

  var title;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(title),
      ),
    );
  }


}
