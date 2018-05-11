import 'package:flutter_planets_app/model/Planet.dart';

class PlanetDao {
  static final List<Planet> planets = [
    const Planet(
        id: "1",
        name: "Mars",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/planet-mars.png",
        pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "2",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-neptune.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-moon.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-earth.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/planet-mercury.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
  ];
}
