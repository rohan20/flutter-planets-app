import 'package:flutter/material.dart';
import 'package:flutter_planets_app/ui/home/HomePage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Planets",
    home: new HomePage(),
  ));
}