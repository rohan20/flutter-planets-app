import 'package:flutter/material.dart';

class PlanetsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Planet Detail"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: new Text("Back"),
        ),
      ),
    );
  }
}
