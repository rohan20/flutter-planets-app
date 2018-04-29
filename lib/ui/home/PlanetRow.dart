import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

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

    final planetCardContent = new Container(
      margin: const EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            children: <Widget>[
              new Expanded(
                  child: new Row(
                children: <Widget>[
                  new Image.asset(
                    "assets/img/ic_distance.png",
                    height: 16.0,
                  ),
                  new Container(
                    width: 8.0,
                  ),
                  new Text(
                    planet.distance,
                    style: regularTextStyle,
                  ),
                ],
              )),
              new Expanded(
                  child: new Row(
                children: <Widget>[
                  new Image.asset("assets/img/ic_gravity.png", height: 16.0),
                  new Container(
                    width: 8.0,
                  ),
                  new Text(
                    planet.gravity,
                    style: regularTextStyle,
                  ),
                ],
              ))
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
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    return new Container(
      height: 140.0,
      margin: new EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}
