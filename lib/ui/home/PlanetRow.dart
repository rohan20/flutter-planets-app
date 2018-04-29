import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage("assets/img/planet-mars.png"),
        height: 92.0,
        width: 92.0,
      ),
    );

    return new Container(
      height: 120.0,
      margin: new EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: new Stack(
        children: <Widget>[
          planetThumbnail,
//          planetCard,
        ],
      ),
    );
  }
}
