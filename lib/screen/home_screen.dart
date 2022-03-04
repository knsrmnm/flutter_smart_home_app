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
                Icon(Icons.info_outline, color: Colors.white),
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
                Text(
                  "Welcome home.",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Comfortaa'
                  ),
                ),
                const SizedBox(height: 30.0),
                Text("Rooms", style: TextStyle(fontSize: 15.0, color: Colors.grey[300], fontFamily: 'Comfortaa')),
                const SizedBox(height: 10.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _makeRoomEl("My Room", true),
                      const SizedBox(width: 8.0),
                      _makeRoomEl("Living Room", false),
                      const SizedBox(width: 8.0),
                      _makeRoomEl("Bath Room", false),
                      const SizedBox(width: 8.0),
                      _makeRoomEl("Entrance", false),
                    ],
                  ),
                ),
                const SizedBox(height: 50.0),
                Text("Devices", style: TextStyle(fontSize: 15.0, color: Colors.grey[300], fontFamily: 'Comfortaa')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* --- Widgets --- */

/// Make room widget.
Widget _makeRoomEl(String name, bool selected) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      color: selected ? Colors.grey[800] : Colors.transparent,
      border: selected ? Border.all(
        color: Colors.grey
      ) : Border.all(
        color: Colors.grey,
        width: 0.3
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(13.0),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Comfortaa',
          fontSize: 13.0
        ),
      ),
    ),
  );
}
