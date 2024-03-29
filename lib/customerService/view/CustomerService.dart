import 'dart:io';

import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Utilities/widgets/custom card.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({super.key});

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: gray1,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: offline.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    "Customer Service",
                    style: TextStyle(color: white, fontSize: 25),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "If you need any help\nfeel free to contact",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      Image.asset(
                        'assets/images/fastTrade.png',
                        scale: 2,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CustomServiceCard(
              image: 'assets/icons/Telegram.png',
              title: 'Telegram',
              icon: Icons.arrow_forward_ios_outlined,
              iconcolor: gray,
              onTap: () {
                whatsapp();
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomServiceCard(
              image: 'assets/icons/Whatsapp.png',
              title: 'WhatsApp',
              icon: Icons.arrow_forward_ios_outlined,
              iconcolor: gray,
              onTap: () {
                whatsapp();
              },
            ),
          ],
        ),
      ),
    );
  }

  whatsapp() async {
    var contact = "+923111655204";
    var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
    var iosUrl =
        "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } on Exception {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }
}
