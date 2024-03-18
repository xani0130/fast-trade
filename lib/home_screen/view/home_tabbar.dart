import 'package:flutter/material.dart';
import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customDrawer.dart';
import '../../Utilities/styles.dart';
import '../../customerService/view/CustomerService.dart';
import '../../profilescreen/view/ProfileScreen.dart';
import '../../quantity_screen/view/QuantityScreen.dart';
import '../../teamscreen/view/TeamScreen.dart';
import 'MainScreen.dart';

class HomeTabbar extends StatefulWidget {
  @override
  _HomeTabbarState createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    Quantity(),
    TeamScreen(),
    CustomerService(),
    ProfileScreen(),
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
          iconTheme: IconThemeData(color: white),
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
          title: _selectedIndex == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fastTrade.png',
                      scale: 4,
                    ),
                    Text(
                      'Fast Trade',
                      style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              : _selectedIndex == 1
                  ? Center(
                    child: Text(
                        'Quantity',
                        style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                  )
                  : _selectedIndex == 2
                      ? Center(
                        child: Text(
                            'Team',
                            style: TextStyle(
                                color: white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                      )
                      : _selectedIndex == 3
                          ? Center(
                            child: Text(
                                'Customer Service',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                          )
                          : Center(
                            child: Text(
                                'Profile',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                          )),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/home1.png'),
              ),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/quantity1.png'),
              ),
              label: ('Search'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/team1.png'),
              ),
              label: ('Profile'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/customservice1.png'),
              ),
              label: ('Profile'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/profile1.png'),
              ),
              label: ('Profile'),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: starColor,
          unselectedItemColor: gray,
          iconSize: 30,
          backgroundColor: bottombar,
          onTap: _onItemTapped,
          elevation: 0),
    );
  }
}
