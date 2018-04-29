import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/PlanetDao.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new PlanetRow(PlanetDao.planets[1]);
  }

}