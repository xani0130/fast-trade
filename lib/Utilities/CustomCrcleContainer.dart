import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomCircleAvtar extends StatelessWidget {
  Border? border;
  dynamic onTap;
  Color? bgcolor;
  String Iconimage;
  String? title;

  CustomCircleAvtar(
      {super.key,
      required this.onTap,
      this.border,
      this.bgcolor,
      required this.Iconimage,
      this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 8,),
            child: Container(
              padding: EdgeInsets.all(10),

              decoration: BoxDecoration(
                  border: border ??
                      GradientBoxBorder(
                          width: 2,
                          gradient: LinearGradient(colors: [
                            darkcolor,
                            starColor,
                            darkcolor,
                          ])),
                  color: Colors.transparent,
                  shape: BoxShape.circle),
              child: Image(
                image: AssetImage(
                  '$Iconimage',
                ),
                height: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6,bottom: 8),
          child: Text(
            '$title',
            style: TextStyle(color: gray, fontSize: 12),
          ),
        ),

      ],
    );
  }
}

class LoginCustomCircleAvtar extends StatelessWidget {
  Border? border;
  dynamic onTap;
  Color? bgcolor;
  Image image;

  LoginCustomCircleAvtar(
      {super.key,
      required this.onTap,
      this.border,
      this.bgcolor,
      required this.image});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        height: height * 0.09,
        width: width * 0.14,
        decoration: BoxDecoration(

            color: Colors.white.withOpacity(0.2),
            shape: BoxShape.circle),
        child: image,
      ),
    );
  }
}
