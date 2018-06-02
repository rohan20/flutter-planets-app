import 'package:flutter_planets_app/model/Planet.dart';

class PlanetDao {
  static final List<Planet> planets = [
    const Planet(
        id: "1",
        name: "Mars",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the \"Red Planet\" because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
        image: "assets/img/planet-mars.png",
        pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "2",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune.[d] Neptune orbits the Sun once every 164.8 years at an average distance of 30.1 AU (4.5 billion km). It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident.",
      image: "assets/img/planet-neptune.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "The Moon is an astronomical body that orbits planet Earth and is Earth's only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). The Moon is after Jupiter's satellite Io the second-densest satellite in the Solar System among those whose densities are known.\n\nThe Moon is thought to have formed about 4.51 billion years ago, not long after Earth. The most widely accepted explanation is that the Moon formed from the debris left over after a giant impact between Earth and a Mars-sized body called Theia.",
      image: "assets/img/planet-moon.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.",
      image: "assets/img/planet-earth.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
    const Planet(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.\n\nLike Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet, and never exceeds 28° away from the Sun. When viewed from Earth, this proximity to the Sun means the planet can only be seen near the western or eastern horizon during the early evening or early morning. At this time it may appear as a bright star-like object, but is often far more difficult to observe than Venus. The planet telescopically displays the complete range of phases, similar to Venus and the Moon, as it moves in its inner orbit relative to Earth, which reoccurs over the so-called synodic period approximately every 116 days.",
      image: "assets/img/planet-mercury.png",
      pictureUrl: "https://cdn.images.express.co.uk/img/dynamic/151/590x/mars-head-722888.jpg",
    ),
  ];
}
