import 'package:flutter/material.dart';

import '../../Utilities/styles.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<profilePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: gray1,
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            SizedBox(
              height: 180,
              child: Center(
                child: Text(
                  'Profile Details Goes here',
                ),
              ),
            ),

            // the tab bar with two items
            Container(
              child: SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  bottom: TabBar(
                    tabs: [
                      Tab(
                       text: 'Team Member',
                      ),
                      Tab(
                       text: 'Team Contribution',
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: gray1,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: gray1,
                    child: Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}