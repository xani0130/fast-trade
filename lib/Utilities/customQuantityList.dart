import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customlist extends StatelessWidget {
  String Iconimage;
  String title;
  String subtitle;
  customlist({super.key,
    required this.Iconimage,
    required this.title,
    required this.subtitle
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            Iconimage,
            scale: 4,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: white,
            ),
          ),
          subtitle: Text(
            subtitle,
            style:
            TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.5)),
          ),
        ),
      ],
    );
  }
}