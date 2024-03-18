import 'package:flutter/material.dart';
import '../../Utilities/styles.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
            "Wallet",
            style: TextStyle(color: white),
          ),
        ),
      ),
      backgroundColor: gray1,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(children: [
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

        ]),
      ),
    );
  }
}
