import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utilities/customQuantityList.dart';
import '../../../Utilities/customTextField.dart';
import '../../../Utilities/widgets.dart';
import '../../../Utilities/widgets/custom card.dart';

class RechargeScreen extends StatefulWidget {
  const RechargeScreen({super.key});

  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  bool referalBox = false;
  final String rechargeText = 'Recharge Through Binance';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          backgroundColor: gray1,
          title: Center(
            child: Text(
              "Recharge",
              style: TextStyle(color: white),
            ),
          ),
        ),
        backgroundColor: gray1,
        body: Stack(
          children: [
            Positioned(
                child: Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CustomServiceCard(
                    image: 'assets/icons/binance.png',
                    title: rechargeText,
                    icon: Icons.copy_all,
                    imgColor: starColor,
                    iconcolor: starColor, onTap: (){
                    Clipboard.setData(ClipboardData(text: rechargeText)).then((value) {
                      snackBar();
                    });
                  },
                  ),

                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: offline.withOpacity(0.3)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Recharge Amount',style: TextStyle(color: white),),
                        SizedBox(height: height *0.01,),
                        CustomizeTextField(
                          hintText: "Enter Amount Here",
                          isKeyboardType: TextInputType.phone,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Button(
                    onTap: () {
                      setState(() {
                        referalBox = true;
                      });
                    },
                    text: 'Recharge',
                    color: starColor,
                    textcolor: white,
                    borcolor: starColor,
                  )
                ],
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
                              Image(
                                image:
                                AssetImage('assets/icons/successfulTick.png'),
                                height: 120,
                              ),
                              Text(
                                "Recharge Successful",
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
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
