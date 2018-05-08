import 'package:flutter_planets_app/model/Planet.dart';

class PlanetDao {
//  static final List<Planet> planets = [
//    const Planet(
//      id: "1",
//      name: "Mars",
//      location: "Milkyway Galaxy",
//      distance: "54.6m Km",
//      gravity: "3.711 m/s ",
//      description: "Lorem ipsum...",
//      image: "assets/img/planet-mars.png",
//    ),
//    const Planet(
//      id: "2",
//      name: "Neptune",
//      location: "Milkyway Galaxy",
//      distance: "54.6m Km",
//      gravity: "3.711 m/s ",
//      description: "Lorem ipsum...",
//      image: "assets/img/planet-neptune.png",
//    ),
//    const Planet(
//      id: "3",
//      name: "Moon",
//      location: "Milkyway Galaxy",
//      distance: "54.6m Km",
//      gravity: "3.711 m/s ",
//      description: "Lorem ipsum...",
//      image: "assets/img/planet-moon.png",
//    ),
//    const Planet(
//      id: "4",
//      name: "Earth",
//      location: "Milkyway Galaxy",
//      distance: "54.6m Km",
//      gravity: "3.711 m/s ",
//      description: "Lorem ipsum...",
//      image: "assets/img/planet-earth.png",
//    ),
//    const Planet(
//      id: "5",
//      name: "Mercury",
//      location: "Milkyway Galaxy",
//      distance: "54.6m Km",
//      gravity: "3.711 m/s ",
//      description: "Lorem ipsum...",
//      image: "assets/img/planet-mercury.png",
//    ),
//  ];

  PlanetDao(){
    init();
  }

  List<Planet> _items;

  List<Planet> getItems() {
    return _items;
  }

  void init() {
    _items = new List<Planet>();

    _items.add(new Planet(
        id: "1",
        name: "Mars",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/planet-mars.png"));

    _items.add(new Planet(
      id: "2",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-neptune.png",));

    _items.add(new Planet(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-moon.png",));

    _items.add(new Planet(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-earth.png",));

    _items.add(new Planet(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-mercury.png",));
  }

  void deleteFromList(Planet toBeDeletedPlanet) {

    print("Planets list: " + (this._items).toString());

//    if (_items.contains(planet))
    for(Planet planet in this._items){
      if(planet.id == toBeDeletedPlanet.id){
        this._items.remove(toBeDeletedPlanet);
        print("Delete id: " + planet.id);
        break;
      }
    }
  }
}
