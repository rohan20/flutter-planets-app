import 'package:flutter/material.dart';

class TextStyles {
  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static final regularTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 9.0,
    fontWeight: FontWeight.w400,
  );

  static final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);
}
