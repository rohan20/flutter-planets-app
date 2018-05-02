import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/model/PlanetDao.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Planet> planets = PlanetDao.planets;

    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (context, index) => new PlanetRow(planets[index]),
        itemCount: planets.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }

}