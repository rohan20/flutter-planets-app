import 'package:flutter/material.dart';
import 'package:flutter_planets_app/util/TextStyles.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double appBarHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        colors: [
          const Color(0xFF3366FF),
          const Color(0xFF00CCFF),
        ],
        begin: new FractionalOffset(0.0, 0.0),
        end: new FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      )),
      child: new Center(
        child: new Text(
          title,
          style: TextStyles.appBarTextStyle,
        ),
      ),
    );
  }
}
