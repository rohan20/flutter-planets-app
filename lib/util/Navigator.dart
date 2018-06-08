import 'package:flutter/cupertino.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/ui/detail/PlanetsDetailPage.dart';

class RouteNavigator {
  static void navigateToDetailsPage(BuildContext context, Planet planet) {
    Navigator.of(context).push(new PageRouteBuilder(
        pageBuilder: (_, __, ___) => new PlanetsDetailPage(planet)));
  }
}
