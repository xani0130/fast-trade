import 'package:flutter/material.dart';

import '../../Auth/view/login.dart';
import '../../Utilities/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomTab(),
    );
  }
}

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: gray1,
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color:  offline.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundColor: starColor,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/images/person.jfif'),
                        ),
                      ),
                      title: Text(
                        'Sam Ticker',
                        style: TextStyle(
                            fontSize: 14,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SamTicker3456@gmail.com',
                            style: TextStyle(fontSize: 12, color: white),
                          ),
                          Text(
                            'Level 01',
                            style: TextStyle(fontSize: 12, color: white),
                          ),
                        ],
                      ),
                      trailing: Image.asset(
                        'assets/icons/crown.png',
                        scale: 4.5,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Total Assets(USDT)',
                      style: TextStyle(
                          fontSize: 12, color: Colors.white.withOpacity(0.3)),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      '\$ 750.432',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap:(){},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contract Amount >',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                '\$ 120.0432',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: starColor),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contract Amount >',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                '\$ 120.0432',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: starColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: offline.withOpacity(0.3),),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: starColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: white,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: 'Recharge',
                    ),
                    Tab(
                      text: "Withdraw",
                    ),
                    Tab(
                      text: 'Help',
                    ),
                  ],
                ),
              ),
              Flexible(
                child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                  Recharge(),
                  Withdraw(),
                  Help(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Recharge extends StatelessWidget {
  const Recharge({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: offline.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$ 0.50.0000',
                      style: TextStyle(
                          fontSize: 16, color: starColor),
                    ),
                   SizedBox(
                     width: width * 0.1,
                   ),
                   Image.asset('assets/icons/graph.png',scale: 3,)
                  ],
                ),

                Divider(
                  height: 20,
                  color: white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's \nCommission",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Today's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "yesterday's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            'assets/icons/security.png',
            scale: 4,
          ),
          title: Text(
            'Security Center',
            style: TextStyle(color: white),
          ),
          onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
        ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.language_outlined,
              color: starColor,
            ),
            title: Text(
              'Language Settings',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
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
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'assets/icons/info.png',
              scale: 4,
            ),
            title: Text(
              'About Us',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
              contentPadding: EdgeInsets.zero,
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
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }),
        ],
      ),
    );
  }
}

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color:  offline.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$ 0.50.0000',
                      style: TextStyle(
                          fontSize: 16, color: starColor),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Image.asset('assets/icons/graph.png',scale: 3,)
                  ],
                ),

                Divider(
                  height: 20,
                  color: white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's \nCommission",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Today's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "yesterday's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color:  offline.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'assets/icons/security.png',
              scale: 4,
            ),
            title: Text(
              'Security Center',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.language_outlined,
              color: starColor,
            ),
            title: Text(
              'Language Settings',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
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
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'assets/icons/info.png',
              scale: 4,
            ),
            title: Text(
              'About Us',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
              contentPadding: EdgeInsets.zero,
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
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }),
        ],
      ),
    );
  }
}

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$ 0.50.0000',
                      style: TextStyle(
                          fontSize: 16, color: starColor),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Image.asset('assets/icons/graph.png',scale: 3,)
                  ],
                ),

                Divider(
                  height: 20,
                  color: white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's \nCommission",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Today's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "yesterday's\n Earnings",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        Text(
                          '0.00000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: starColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'assets/icons/security.png',
              scale: 4,
            ),
            title: Text(
              'Security Center',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.language_outlined,
              color: starColor,
            ),
            title: Text(
              'Language Settings',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
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
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'assets/icons/info.png',
              scale: 4,
            ),
            title: Text(
              'About Us',
              style: TextStyle(color: white),
            ),
            onTap: () => null,
            trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
          ),
          ListTile(
              contentPadding: EdgeInsets.zero,
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
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: gray.withOpacity(0.5),size: 14,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }),
        ],
      ),
    );
  }
}
