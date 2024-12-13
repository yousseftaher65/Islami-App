import 'package:flutter/material.dart';

class Style {
  static const Color primaryColor = Color(0xffE2BE7F);
  static const Color secondaryColor = Color(0xff202020);
  static const Color accentColor = Color(0x99202020);
  static const Color whiteColor = Color(0xffFFFFFF);
}

class TxtStyle {
  static const TextStyle large = TextStyle(
    color: Style.secondaryColor,
    fontSize: 24,
  );
  static const TextStyle regular = TextStyle(
    color: Style.whiteColor,
    fontSize: 20,
  );
  static const TextStyle versesTxt = TextStyle(
    color: Style.whiteColor,
    fontSize: 14,
  );
  static const TextStyle versesTxt2 = TextStyle(
    color: Style.secondaryColor,
    fontSize: 14,
  );
  static const TextStyle mid = TextStyle(
    color: Style.whiteColor,
    fontSize: 16,
  );
  static const TextStyle small = TextStyle(
    color: Style.whiteColor,
    fontSize: 14,
  );
}
