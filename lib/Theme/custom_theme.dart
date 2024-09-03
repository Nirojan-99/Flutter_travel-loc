import 'package:travel_loc/Theme/material_color.dart';
import 'package:flutter/material.dart';

ThemeData customTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
      appBarTheme: const AppBarTheme(
        color: Color(0xFF0F1E3D),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 25,
            fontFamily: "open sans"),
      ),
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: buildMaterialColor(
        Color.fromRGBO(243, 247, 246, 1),
      )).copyWith(
        secondary: buildMaterialColor(
          const Color(0xffEEB51D),
        ),
      ),
      splashColor: Color.fromRGBO(243, 247, 246, 1),
      brightness: Brightness.light,
      textTheme: const TextTheme(),
      scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      iconTheme: const IconThemeData(color: Colors.white));
}
