import 'package:flutter/material.dart';
import 'login.dart';
import 'explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => LoginScreen(),
      "/ExplorePageRoute": (context) => ExplorePage(),
    });
  }
}


