import 'package:flutter/material.dart';

/// Home screen
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      appBar: AppBar(
        backgroundColor: Color(0xFF151515),
        leading: Icon(Icons.menu, color: Colors.white),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(Icons.notifications, color: Colors.white),
                const SizedBox(width: 15.0),
                Icon(Icons.notifications, color: Colors.white),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome home.", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700, color: Colors.white)),
                Text("Rooms", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey)),
                Text("Devices", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
