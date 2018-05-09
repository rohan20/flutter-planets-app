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
      appBar: new AppBar(
        title: new Text("Planet Detail"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: new Text("Back"),
        ),
      ),
    );
  }
}
