import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/PlanetDao.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView(
        children: <Widget>[
          PlanetRow(PlanetDao.planets[0]),
          PlanetRow(PlanetDao.planets[1]),
          PlanetRow(PlanetDao.planets[2]),
          PlanetRow(PlanetDao.planets[3]),
          PlanetRow(PlanetDao.planets[4]),
        ],
      ),
    );
  }

}