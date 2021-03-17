import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      title: 'Movie Info',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
