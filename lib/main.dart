import './view/homeScreen_view.dart';
import './view/sajda_view.dart';
import './view/surahIndex_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final darkTheme = ThemeData(
    primarySwatch: Colors.indigo,
    primaryColor: Colors.blueGrey,
    brightness: Brightness.dark,
    backgroundColor:  Colors.blueGrey,
    accentColor: Color(0xff896277),
    accentIconTheme: IconThemeData(color: Colors.blueGrey),
    dividerColor: Colors.blueGrey,
    fontFamily: 'Sogeo',

      );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Al-Qur'an",
      theme: darkTheme,
      home: HomeScreen(),
      routes: {
        '/surahIndex': (context) => SurahIndex(),
        '/sajda': (context) => Sajda(),
      },
    );
  }
}
