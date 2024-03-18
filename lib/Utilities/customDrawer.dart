import 'package:fast_trade/Auth/view/login.dart';
import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'CustomCrcleContainer.dart';

class NavBar extends StatelessWidget {
  final Color backgroundColor;
  final Color headerColor;

  NavBar({this.backgroundColor = Colors.white, this.headerColor = Colors.blue});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Drawer(
      width: width * 0.62,
      backgroundColor: Colors.transparent,
      child: ListView(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 18),
            child: Container(
              height: height * 0.28,
             decoration: BoxDecoration(
               color: gray.withOpacity(0.2),
               borderRadius: BorderRadius.circular(15),
             ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: starColor,
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/person.jfif'),
                ),
              ),
              Text('Total Assets',style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 20),),
              Text('\$750.432',style: TextStyle(color: starColor,fontWeight: FontWeight.bold,fontSize: 20),)
            ],
      ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          ListTile(
            leading: Image.asset(
              'assets/icons/security.png',
              scale: 4,
            ),
            title: Text(
              'Security Center',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.language_outlined,
              color: starColor,
            ),
            title: Text(
              'Language Settings',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 11,
                backgroundColor: starColor,
                child: Icon(
                  Icons.question_mark_outlined,
                  color: white,
                  size: 12,
                )),
            title: Text(
              "FAQ's",
              style: TextStyle(color: white),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/icons/info.png',
              scale: 4,
            ),
            title: Text(
              'About Us',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
          ),
          ListTile(
              title: Text(
                'Sign Out',
                style: TextStyle(color: white),
              ),
              leading: CircleAvatar(
                  radius: 11,
                  backgroundColor: starColor,
                  child: Icon(
                    Icons.arrow_back,
                    size: 12,
                    color: white,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }),
          SizedBox(
            height: height * 0.16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/fastTrade.png',
                scale: 4,
              ),
              Text(
                "FAST TRADE",
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
