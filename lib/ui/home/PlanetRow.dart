import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:meta/meta.dart';

class PlanetRow extends StatelessWidget  {

  final Planet planet;

  ValueChanged<Planet> onDeleted;

  PlanetRow({this.planet, @required this.onDeleted});

  void _deletePlanet(){
    print("Delete planet called");
    onDeleted(planet);
  }


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
      margin: const EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Container(
                height: 4.0,
              ),
              new GestureDetector(
                onTap: () => _deletePlanet,
                child: new Image.asset(
                  "assets/img/ic_delete.png",
                  height: 16.0,
                ),
              ),
            ],
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
                  child: _setPlanetSubData(planet.distance, "assets/img/ic_distance.png")),
              new Expanded(
                  child: _setPlanetSubData(planet.gravity, "assets/img/ic_gravity.png")),
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      height: 154.0,
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

    return new GestureDetector(
//      onTap: () => Navigator.pushNamed(context, "/planets_detail_page"),
      child: new Container(
        height: 142.0,
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
