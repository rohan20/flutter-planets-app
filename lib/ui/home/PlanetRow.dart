import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/ui/detail/PlanetsDetailPage.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool isHorizontalLayout;

  PlanetSummary(this.planet, {this.isHorizontalLayout = true});

  PlanetSummary.vertical(this.planet) : isHorizontalLayout = false;

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
    );

    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    Widget _setPlanetSubData(String dataValue, String imagePath) {
      return new Row(
        children: <Widget>[
          new Image.asset(
            imagePath,
            height: 16.0,
          ),
          new Container(
            width: 8.0,
          ),
          new Text(
            dataValue,
            style: regularTextStyle,
          ),
        ],
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(isHorizontalLayout ? 76.0 : 16.0, isHorizontalLayout ? 16.0 : 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: isHorizontalLayout ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: 4.0,
          ),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(
            height: 10.0,
          ),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          new Container(
            margin: const EdgeInsets.symmetric(vertical: 12.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: _setPlanetSubData(
                    planet.distance, "assets/img/ic_distance.png"),
                flex: isHorizontalLayout ? 1 : 0,
              ),
              new Container(
                width: 32.0,
              ),
              new Expanded(
                  child: _setPlanetSubData(
                      planet.gravity, "assets/img/ic_gravity.png"),
                  flex: isHorizontalLayout ? 1 : 0),
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      height: 152.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0)),
          ]),
      child: planetCardContent,
    );

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: isHorizontalLayout
          ? FractionalOffset.centerLeft
          : FractionalOffset.center,
//      alignment: FractionalOffset.centerLeft,
      child: new Hero(
        tag: "planet-hero-${planet.id}",
        child: new Image(
          image: new AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    return new GestureDetector(
      onTap: () => Navigator.of(context).push(new PageRouteBuilder(
          pageBuilder: (_, __, ___) => new PlanetsDetailPage(planet))),
      child: new Container(
        height: 140.0,
        margin: new EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }
}
