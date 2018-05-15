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
            _getGradient(),
            __getContent(),
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

  _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[new Color(0x00736AB7), new Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: new Alignment(0.0, 0.0),
          end: new Alignment(0.0, 1.0),
        ),
      ),
    );
  }

  __getContent() {
    return new ListView(
      children: <Widget>[

      ],
    );
  }
}
