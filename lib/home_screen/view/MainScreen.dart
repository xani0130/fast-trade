import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customDrawer.dart';
import '../../Utilities/styles.dart';
import 'coins_list_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: gray1,
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * width,
                    padding: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: ExactAssetImage('assets/images/bit coin.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Double Your\nCrypto Gains',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text('Secure Low-Fee\nTrading Starts Now!',
                            style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.5)),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomCircleAvtar(
                              title: 'Recharge',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Withdraw',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Quantify',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Partner',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomCircleAvtar(
                              title: 'Wallet',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Team',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Invite',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            CustomCircleAvtar(
                              title: 'Help',
                              Iconimage: 'assets/images/google.png',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.02,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: offline.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Trade',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                              ),
                               Text(
                                'Efficient And Stable',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.5)
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/trading_graph.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width*0.02,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: offline.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Invite Friend',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                              ),
                               Text(
                                'Earn Big Rewards',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.5)
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/trading_graph.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: height*0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child:ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return CoinsListWidget();
                        }),
                  ),
                  SizedBox(
                    height: height*0.02,
                  ),
                ]),
          ),
        ));
  }
}
