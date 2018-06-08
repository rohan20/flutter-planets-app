import 'package:flutter/material.dart';
import 'package:flutter_planets_app/model/Planet.dart';
import 'package:flutter_planets_app/ui/home/PlanetRow.dart';
import 'package:flutter_planets_app/util/TextStyles.dart';
import 'package:flutter_planets_app/widget/SeparatorFooter.dart';

class PlanetsDetailPage extends StatelessWidget {
  Planet planet;

  PlanetsDetailPage(this.planet) {
    print(planet.name);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            __getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        planet.pictureUrl,
        height: 300.0,
        fit: BoxFit.cover,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[new Color(0x00736AB7), new Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: new Alignment(0.0, 0.0),
          end: new Alignment(0.0, 1.0),
        ),
      ),
    );
  }

  __getContent() {
    final String _overviewTitle = "OVERVIEW";
    return new ListView(
      padding: const EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetSummary(
          planet,
          isHorizontalLayout: false,
        ),
        new Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _overviewTitle,
                style: TextStyles.regularTextStyle.copyWith(fontSize: 26.0),
              ),
              new SeparatorFooter(),
              new Text(
                planet.description,
                style: TextStyles.regularTextStyle.copyWith(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _getToolbar(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new BackButton(
        color: Colors.white,
      ),
    );
  }
}
