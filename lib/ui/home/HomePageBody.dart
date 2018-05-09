import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/model/PlanetDao.dart';
import 'package:flutter_planets_app/ui/home/GradientAppBar.dart';
import 'package:flutter_planets_app/ui/home/HomePage.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';

class HomePageBody extends State<HomePage> {
  PlanetDao planetDao;

  List<Planet> planets;
  Planet currentPlanet;

  @override
  Widget build(BuildContext context) {

    planetDao = new PlanetDao();
    planets = planetDao.getItems();

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("treva"),
          new Expanded(
            child: new Container(
              color: new Color(0xFF736AB7),
              child: new Container(
                child: new ListView.builder(
                  itemBuilder: (context, index) => new PlanetRow(
                        planet: planets[index],
                        onDeleted: _handlePlanetDeletion,
                      ),
                  itemCount: planets.length,
                  scrollDirection: Axis.vertical,
                  padding: new EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePlanetDeletion(Planet planet) {
    print("handlePlanetDeletion");
    planetDao.deleteFromList(planet);

    setState(() {
      print("setState() called");
      planets = planetDao.getItems();
    });

  }
}
