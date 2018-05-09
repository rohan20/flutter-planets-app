import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';

class PlanetsDetailPage extends StatelessWidget {

  Planet planet;

  PlanetsDetailPage(this.planet){
    print(planet.name);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(planet.name),
            ),
            new Image.asset(planet.image, height: 96.0, width: 96.0,)
          ],
        ),
      ),
    );
  }
}
