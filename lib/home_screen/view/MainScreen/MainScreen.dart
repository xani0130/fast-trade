import 'package:fast_trade/home_screen/view/MainScreen/WalletScreen/View/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utilities/CustomCrcleContainer.dart';
import '../../../Utilities/styles.dart';
import '../../../Utilities/CustomStepper.dart';
import '../../../quantity_screen/view/QuantityScreen.dart';
import '../../../teamscreen/view/TeamScreen.dart';
import 'RechargeScreen.dart';
import 'WithdrawScreen.dart';
import '../coins_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import '../../Model/CoinsdataModel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool referalBox = false;
  String linkText = 'https://www.youtube.com/';
  String codeText = '1kcvg546fg';

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
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
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
                                    style:
                                        TextStyle(fontSize: 18, color: white),
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
                                        Get.to(RechargeScreen());
                                      },
                                    ),
                                    CustomCircleAvtar(
                                      title: 'Withdraw',
                                      Iconimage: 'assets/images/withdraw.png',
                                      onTap: () {
                                        Get.to(WithdrawScreen());
                                      },
                                    ),
                                    CustomCircleAvtar(
                                      title: 'Quantify',
                                      Iconimage: 'assets/images/quantity.png',
                                      onTap: () {
                                        Get.to(Quantity(showapp: true,));
                                      },
                                    ),
                                    CustomCircleAvtar(
                                      title: 'Partner',
                                      Iconimage: 'assets/images/partner.png',
                                      onTap: () {
                                      },
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
                                        Get.to(Wallet());
                                      },
                                    ),
                                    CustomCircleAvtar(
                                      title: 'Team',
                                      Iconimage: 'assets/images/team.png',
                                      onTap: () {
                                        Get.to(TeamScreen());
                                      },
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Trade',
                                        style: TextStyle(
                                            fontSize: 15, color: white),
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
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                itemCount: CoinsData().CoinsDatadetails.length,
                                itemBuilder: (BuildContext context, int index) {
                                  BitCoinsDetails dailycomplaintdetails =
                                      CoinsData().CoinsDatadetails[index];
                                  return CoinDetailWidget(
                                      dailycoinsdetail: dailycomplaintdetails);
                                }),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                        ]),
                  ],
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
                              CustomStepper(),
                              SizedBox(
                                height: width * 0.05,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff868686),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Invitation Link',
                                          style: GoogleFonts.inter(
                                            fontSize: width * sixteen,
                                            color: white,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Clipboard.setData(ClipboardData(text: linkText)).then((value) {
                                                snackBar();
                                              });
                                            },
                                            icon: Icon(
                                              Icons.copy_all,
                                              color: theme,
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: width * 0.01,
                                    ),
                                    Text(
                                        linkText,
                                        style: GoogleFonts.inter(
                                          fontSize: width * fourteen,
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
                                  color: const Color(0xff868686),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Invitation Code',
                                          style: GoogleFonts.inter(
                                            fontSize: width * sixteen,
                                            color: white,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: (){
                                            Clipboard.setData(ClipboardData(text: codeText)).then((value) {
                                              snackBar();
                                            });
                                          },
                                          icon: Icon(
                                            Icons.copy_all,
                                            color: theme,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: width * 0.01,
                                    ),
                                    Text(
                                        codeText,
                                        style: GoogleFonts.inter(
                                          fontSize: width * fourteen,
                                          color: white,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: width * 0.05,
                              ),
                              const Image(
                                image: AssetImage('assets/images/ref_qr.png'),
                                height: 120,
                              )
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
   snackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(left: 90,right: 90,bottom: 10),
        elevation: 0,
        content: Center(child: Text('Text copied to clipboard',style: TextStyle(fontSize: 10),)),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
