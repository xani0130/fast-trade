import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Utilities/styles.dart';
import '../Model/WalletModel.dart';
import 'WalletCoinScreen.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

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
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
      leading: IconButton(onPressed: (){
        Get.back();
      },
      icon: Icon(Icons.arrow_back),),
        backgroundColor: gray1,
        title: Center(
          child: Text(
            "Wallet",
            style: TextStyle(color: white),
          ),
        ),
      ),
      backgroundColor: gray1,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            padding: EdgeInsets.all(30),
            width: width * width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: offline.withOpacity(0.3)),
            child: Column(
              children: [
                Text(
                  "Total Assets",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "\$ 750.432",
                  style: TextStyle(
                      color: starColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),

              ],
            ),
          ),
              SizedBox(
                height: height * 0.02,
              ),
              TabBar(
                indicator: BoxDecoration(
                  color: starColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: white,
                dividerColor: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    text: '1H',
                  ),
                  Tab(
                    text: "1D",
                  ),
                  Tab(
                    text: '1W',
                  ),
                  Tab(
                    text: "1M",
                  ),
                  Tab(
                    text: '1Y',
                  ),

                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Flexible(
                child: TabBarView(physics: BouncingScrollPhysics(), children: [
                  TeamContribution(),
                  TeamContribution(),
                  TeamContribution(),
                  TeamContribution(),
                  TeamContribution(),
                ]),
              ),
        SizedBox(
          height: height * 0.02,
        ),

            ],
          ),
        ),
      ),
    );
  }
}

class TeamContribution extends StatelessWidget {
  const TeamContribution({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
              child: Image.asset('assets/images/graph.png',scale: 2,)),
          SizedBox(
            height: 10,
          ),
          Text(
            'Balance Inquiery',
      style: TextStyle(
      color: white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: offline.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
            child: ListView.builder(
                physics:  BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount:  WalletData().WalletDatadetails.length,
                itemBuilder: (BuildContext context, int index) {
                  WalletCoinsDetails dailyWalletdetails =
                  WalletData()
                      .WalletDatadetails[index];
                  return WalletCoinWidget(
                      dailywalletdetail: dailyWalletdetails);
                }),
          ),
        ],
      ),
    );
  }
}

