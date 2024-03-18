import 'package:fast_trade/home_screen/view/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customDrawer.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets/dialog_box.dart';
import 'RechargeScreen.dart';
import 'WithdrawScreen.dart';
import 'coins_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool referalBox = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: gray1,
        body: Stack(
          children: [
            Positioned(
              child: Padding(
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
                                image: ExactAssetImage(
                                    'assets/images/bit coin.jpg'),
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
                                Text(
                                  'Double Your\nCrypto Gains',
                                  style: TextStyle(fontSize: 18, color: white),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Secure Low-Fee\nTrading Starts Now!',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: offline.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomCircleAvtar(
                                    title: 'Recharge',
                                    Iconimage: 'assets/images/recharge.png',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => RechargeScreen()),
                                      );
                                    },
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Withdraw',
                                    Iconimage: 'assets/images/withdraw.png',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => WithdrawScreen()),
                                      );
                                    },
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Quantify',
                                    Iconimage: 'assets/images/quantity.png',
                                    onTap: () {},
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Partner',
                                    Iconimage: 'assets/images/partner.png',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomCircleAvtar(
                                    title: 'Wallet',
                                    Iconimage: 'assets/images/Wallet.png',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Wallet()),
                                      );
                                    },
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Team',
                                    Iconimage: 'assets/images/team.png',
                                    onTap: () {},
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Invite',
                                    Iconimage: 'assets/images/invite.png',
                                    onTap: () {},
                                  ),
                                  CustomCircleAvtar(
                                    title: 'Help',
                                    Iconimage: 'assets/images/help.png',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
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
                                    Text(
                                      'Trade',
                                      style:
                                          TextStyle(fontSize: 15, color: white),
                                    ),
                                    Text(
                                      'Efficient And Stable',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: white.withOpacity(0.5)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Image(
                                        height: height * 0.15,
                                        image: const AssetImage(
                                          'assets/images/trade.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    referalBox = true;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: offline.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Invite Friend',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: white,
                                        ),
                                      ),
                                      Text(
                                        'Earn Big Rewards',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: white.withOpacity(0.5)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Image(
                                          height: height * 0.15,
                                          image: const AssetImage(
                                            'assets/images/invitefriend.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: offline.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return const CoinsListWidget();
                              }),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ]),
                ),
              ),
            ),
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'assets/icons/ref_msg.png'),
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: width * 0.02,
                                      ),
                                      Text('Invite\na friend',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            fontSize:
                                            width * fourteen,
                                            color: white,
                                          ))
                                    ],
                                  ),
                                  // Container(
                                  //   height: 1,
                                  //   width: width * 0.05,
                                  //   color: Colors.white,
                                  // ),
                                   Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'assets/icons/ref_invite.png',),
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: width * 0.02,
                                      ),
                                      Text('Friend\nComplete\nRegistration',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            fontSize:
                                            width * fourteen,
                                            color: white,
                                          ))
                                    ],
                                  ),
                                  // Container(
                                  //   height: 1,
                                  //   width: width * 0.05,
                                  //   color: Colors.white,
                                  // ),
                                    Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'assets/icons/ref_earn.png'),
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: width * 0.02,
                                      ),
                                      Text(
                                        'Get\nReward',
                                        textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            fontSize:
                                            width * fourteen,
                                            color: white,
                                          )
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: width * 0.05,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color(0xff868686),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Invitation Link',
                                          style: GoogleFonts.inter(
                                            fontSize:
                                            width * sixteen,
                                            color: white,
                                          ),),
                                        Icon(Icons.copy_sharp,color: theme,)
                                      ],
                                    ),
                                    SizedBox(
                                      height: width * 0.01,
                                    ),
                                     Text('https://www.youtube.com/',
                                         style: GoogleFonts.inter(
                                      fontSize:
                                      width * fourteen,
                                      color: white,
                                    )),
                                  ],
                                ),
                              ),
                               SizedBox(
                                height: width * 0.05,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color(0xff868686),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Invitation Code',
                                          style: GoogleFonts.inter(
                                            fontSize:
                                            width * sixteen,
                                            color: white,
                                          ),),
                                        Icon(Icons.copy_sharp,color: theme,)
                                      ],
                                    ),
                                    SizedBox(
                                      height: width * 0.01,
                                    ),
                                     Text('1KCVG45',
                                         style: GoogleFonts.inter(
                                      fontSize:
                                      width * fourteen,
                                      color: white,
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: width * 0.05,
                              ),
                              const Image(image: AssetImage('assets/images/ref_qr.png'),height: 120,)
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
