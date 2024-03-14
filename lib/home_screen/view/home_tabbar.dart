import 'package:flutter/material.dart';
import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customDrawer.dart';
import '../../Utilities/styles.dart';
import 'MainScreen.dart';


class HomeTabbar extends StatefulWidget {
  @override
  _HomeTabbarState createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: NavBar(),
      backgroundColor: gray1,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/person.jfif'),
            ),
          ),
        ],
        backgroundColor: gray1,
        title: Center(
            child: Text(
              "⚡FAST TRADE",
              style: TextStyle(
                  color: white, fontSize: 18, fontWeight: FontWeight.bold),
            )),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0), // Adjust as needed
          topRight: Radius.circular(10.0), // Adjust as needed
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
            showUnselectedLabels: false,
            items:   const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ('Home'),
               ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label:  ('Search'),
               ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline_sharp),
                label:  ('Profile'),
               ),BottomNavigationBarItem(
                icon: Icon(Icons.headset_mic_rounded),
                label:  ('Profile'),
               ),BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label:  ('Profile'),
               ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: starColor,
            iconSize: 30,
            backgroundColor: Colors.white.withOpacity(0.3),
            onTap: _onItemTapped,
            elevation: 0
        ),
      ),
    );
  }
}
