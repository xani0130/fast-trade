import 'package:flutter/material.dart';
import '../../Utilities/styles.dart';
import '../Model/TeamModel.dart';
import 'TeamWidget.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      length: 2,
      child: Scaffold(
        backgroundColor: gray1,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: width * 0.2,
                      decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Team",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: height * 0.017,
                          ),
                          Text(
                            "\$ 456.908",
                            style: TextStyle(fontSize: 20, color: white),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            "Total Member",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: height * 0.017,
                          ),
                          Text(
                            "06",
                            style: TextStyle(fontSize: 20, color: white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Partner",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 18,
                              backgroundColor: starColor,
                              child: const CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/person.jfif'),
                              ),
                            ),
                            title: Text(
                              'John Robert',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '02 year Partnership',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                          ),
                          Text(
                            "Total Earning",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Text(
                            "\$ 235.768",
                            style: TextStyle(fontSize: 20, color: white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 7, bottom: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.1)),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: starColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: white,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    const Tab(
                      text: 'Team Member',
                    ),
                    const Tab(
                      text: "Team Contribution",
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: TabBarView(physics: BouncingScrollPhysics(), children: [
                  TeamMember(),
                  TeamContribution(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMember extends StatelessWidget {
  const TeamMember({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: TeamData().teamserviceDatadetails.length,
            itemBuilder: (BuildContext context, int index) {
              TeamDetails dailyteamDatadetails =
                  TeamData().teamserviceDatadetails[index];
              return TeamWidget(teamdetail: dailyteamDatadetails);
            }),
      ],
    );
  }
}

class TeamContribution extends StatelessWidget {
  const TeamContribution({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: TeamData().teamserviceDatadetails.length,
            itemBuilder: (BuildContext context, int index) {
              TeamDetails dailyteamDatadetails =
              TeamData().teamserviceDatadetails[index];
              return TeamWidget(teamdetail: dailyteamDatadetails);
            }),
      ],
    );
  }
}
