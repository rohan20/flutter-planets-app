import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/model/PlanetDao.dart';
import 'package:flutter_planets_app/ui/home/GradientAppBar.dart';
import 'package:flutter_planets_app/ui/home/HomePage.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';

class HomePageBody extends State<HomePage> {
  PlanetDao planetDao;

  List<Planet> planets;

  @override
  Widget build(BuildContext context) {

    setState(() {
      planetDao = new PlanetDao();
    });

//    planetDao.init();
    planets = planetDao.getItems();

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("treva"),
          new Expanded(
            child: new Container(
              color: new Color(0xFF736AB7),
              child: new ListView.builder(
                itemBuilder: (context, index) => new PlanetRow(planets[index]),
                itemCount: planets.length,
                scrollDirection: Axis.vertical,
                padding: new EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void removeFromList(Planet planet) {
    planetDao.deleteFromList(planet);
    setState(() {
      planets = planetDao.getItems();
    });
    print("Deleted");
  }
}
