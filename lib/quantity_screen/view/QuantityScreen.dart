import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';

import '../../Utilities/customQuantityList.dart';

class Quantity extends StatelessWidget {
  const Quantity({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: gray1,
        body: Padding(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: gray.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact Amount',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Text(
                            'Total Earning',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Text(
                            'Total Assets',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ 120.543',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Text(
                            '\$ 520.543',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Text(
                            '\$ 750.432',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Image.asset('assets/images/BitCoinImage.png'),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.cable,
                    color: starColor,
                  ),
                  Text(
                    "Current Level",
                    style: TextStyle(color: white, fontSize: 18),
                  ),
                  Icon(
                    Icons.cable,
                    color: starColor,
                  ),
                ]),
                SizedBox(
                  height: height * 0.03,
                ),
                Image.asset(
                  'assets/icons/medal.png',
                  scale: 4,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(
                     child: Container(
                       width: width * 0.2,
                       decoration: BoxDecoration(
                         color: gray.withOpacity(0.3),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Column(
                         children: [
                           customlist(
                             Iconimage: 'assets/icons/quantity1.png',
                             title: '05',
                             subtitle: 'Times/Day',
                           ),
                           customlist(
                             Iconimage: 'assets/icons/08Usdt.png',
                             title: '08 USDT',
                             subtitle: 'Promo Reward',
                           ),
                           customlist(
                             Iconimage: 'assets/icons/50.00usdt.png',
                             title: '> 50.00 USDT',
                             subtitle: 'Promo Conditions',
                           ),
                           customlist(
                             Iconimage: 'assets/icons/120days.png',
                             title: '120',
                             subtitle: 'Days',
                           ),
                         ],
                       ),
                     ),
                   ),
                   Expanded(
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Column(
                         children: [
                           customlist(
                             Iconimage: 'assets/icons/1.05-1.55.png',
                             title: '1.05 - 1.55%',
                             subtitle: 'Profit Ratio',
                           ),
                           customlist(
                             Iconimage: 'assets/icons/100.00-200.00.png',
                             title: '100.00 - 200.00',
                             subtitle: 'Balance',
                           ),

                         ],
                       ),
                     ),
                   ),
                 ],
               )
              ],
            ),
          ),
        ));
  }
}
