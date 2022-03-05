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
        scaffoldBackgroundColor: Color(0xFF151515),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF151515),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[700]
        )
      ),
      home: HomeScreen(),
    );
  }
}
