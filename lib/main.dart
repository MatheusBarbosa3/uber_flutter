import 'package:flutter/material.dart';
import 'package:uber_flutter/screens/Home.dart';

final ThemeData defaultTheme = ThemeData(
    primaryColor: Color(0xff37474f),
    accentColor: Color(0xff546e7a)
);

void main() => runApp(MaterialApp(
  title: "Uber",
  home: Home(),
  theme: defaultTheme,
  debugShowCheckedModeBanner: false,
));






