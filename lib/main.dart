import 'package:flutter/material.dart';
import 'package:flutter_smart_home_app/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: HomeScreen(),
    );
  }
}
