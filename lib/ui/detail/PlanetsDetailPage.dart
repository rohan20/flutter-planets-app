import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';

class PlanetsDetailPage extends StatelessWidget {
  Planet planet;

  PlanetsDetailPage(this.planet) {
    print(planet.name);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
//            _getGradient(),
//            __getContent(),
//            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        planet.pictureUrl,
        height: 300.0,
        fit: BoxFit.cover,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }
}
