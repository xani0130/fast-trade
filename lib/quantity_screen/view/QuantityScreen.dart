import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utilities/customQuantityList.dart';
import '../../Utilities/widgets.dart';

class Quantity extends StatefulWidget {
  final bool showapp;
  const Quantity({super.key, this.showapp = true});

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    bool referalBox = false;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: gray1,
        appBar: widget.showapp ? AppBar(
          iconTheme: IconThemeData(
            color: white
          ),
          backgroundColor: gray1,
            title: Center(child: Text('Quantity',style: TextStyle(color: white),)),
          elevation: 0,

        ) : null,
        body: Stack(
          children: [
            Positioned(
                child: Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.03,
                          ),
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
                      height: height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          referalBox = true;
                        });
                      },
                      child: Image.asset(
                        'assets/icons/medal.png',
                        scale: 4,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: offline.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: customlist(
                                  Iconimage: 'assets/icons/quantity1.png',
                                  title: '05',
                                  subtitle: 'Times/Day',
                                ),
                              ),
                              Expanded(
                                child: customlist(
                                  Iconimage: 'assets/icons/1.05-1.55.png',
                                  title: '1.05 - 1.55%',
                                  subtitle: 'Profit Ratio',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: customlist(
                                  Iconimage: 'assets/icons/08Usdt.png',
                                  title: '08 USDT',
                                  subtitle: 'Promo Reward',
                                ),
                              ),
                              Expanded(
                                child: customlist(
                                  Iconimage: 'assets/icons/100.00-200.00.png',
                                  title: '10.0 - 20.0',
                                  subtitle: 'Balance',
                                ),
                              ),
                            ],
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
                    SizedBox(
                      height: height * 0.02,
                    )
                  ],
                ),
              ),
            )),
            (referalBox == true)
                ? Positioned(
                    child: Container(
                    height: height * 1,
                    width: width * 1,
                    // color: Colors.transparent.withOpacity(0.6),
                    color: (isDarkTheme == true)
                        ? textColor.withOpacity(0.2)
                        : Colors.transparent.withOpacity(0.6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: height * 0.07,
                                  width: width * 0.07,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: page.withOpacity(0.3)),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          referalBox = false;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.white,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.05),
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.withOpacity(0.6)),
                          child: Column(
                            children: [
                              Text(
                                "Reward",
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/icons/08Usdt.png'),
                                    height: 120,
                                  ),
                                  Positioned(
                                    top: 60,
                                    left: 35,
                                    child: Text(
                                      "\$ 5",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Button(
                                width: width * 0.4,
                                height: height * 0.04,
                                onTap: () {},
                                text: 'Claim Now',
                                textcolor: white,
                                color: starColor,
                                borcolor: starColor,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
                : Container(),
          ],
        ));
  }
}
