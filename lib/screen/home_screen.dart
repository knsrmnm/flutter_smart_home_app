import 'package:flutter/material.dart';

/// Home screen
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _switch1 = false;
  bool _switch2 = false;
  bool _switch3 = false;
  bool _switch4 = false;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.menu, color: Color(0xFF151515)),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(Icons.notifications, color: Color(0xFF151515)),
                const SizedBox(width: 15.0),
                Icon(Icons.info_outline, color: Color(0xFF151515)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: ("Device"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ("Setting"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("My Page"),
          ),
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
                    color: Color(0xFF151515),
                    fontFamily: 'Comfortaa'
                  ),
                ),
                const SizedBox(height: 30.0),
                Text("Rooms", style: TextStyle(fontSize: 15.0, color: Colors.grey[600], fontFamily: 'Comfortaa')),
                const SizedBox(height: 15.0),
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
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Devices", style: TextStyle(fontSize: 15.0, color: Colors.grey[600], fontFamily: 'Comfortaa')),
                    Text("+Add Device", style: TextStyle(fontSize: 12.0, color: Colors.grey[600], fontFamily: 'Comfortaa')),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    _makeDeviceEl("Lighting", "subText", Icons.lightbulb_outline, size.width,
                      Switch(
                        value: _switch1,
                        onChanged: (bool e) { setState(() => _switch1 = e); },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 18.0),
                    _makeDeviceEl("android tv", "subText", Icons.android, size.width,
                      Switch(
                        value: _switch2,
                        onChanged: (bool e) { setState(() => _switch2 = e); },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 20.0),
                Row(
                    children: [
                      _makeDeviceEl("Security", "subText", Icons.lock_outline, size.width,
                        Switch(
                          value: _switch3,
                          onChanged: (bool e) { setState(() => _switch3 = e); },
                          activeColor: Colors.white,
                          activeTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.grey[700],
                          inactiveTrackColor: Colors.black54,
                        ),
                      ),
                      const SizedBox(width: 18.0),
                      _makeDeviceEl("Internet", "subText", Icons.wifi, size.width,
                        Switch(
                          value: _switch4,
                          onChanged: (bool e) { setState(() => _switch4 = e); },
                          activeColor: Colors.white,
                          activeTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.grey[700],
                          inactiveTrackColor: Colors.black54,
                        ),
                      ),
                    ]
                ),
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
          color: selected ? Colors.white : Colors.black,
          fontFamily: 'Comfortaa',
          fontSize: 13.0
        ),
      ),
    ),
  );
}

/// Make device widget.
Widget _makeDeviceEl(String name, String subText, IconData icon, double width, Widget sw) {
  final double containerWidth = (width/2)-24.0;
  final double iconContainerWidth = containerWidth*0.3;
  return Container(
    width: containerWidth,
    height: 170.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      color: Colors.grey[200]
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 10.0, left: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 0.5,
                  )
                ),
                width: iconContainerWidth,
                height: iconContainerWidth,
                child: Icon(icon, size: 25.0, color: Color(0xFF151515)),
              )
            )
          ),
          Align(
            alignment: const Alignment(-1, 0.3),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color(0xFF151515)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-1, 0.65),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                subText,
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.grey[500]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: sw
          ),
        ],
      ),
    ),
  );
}
