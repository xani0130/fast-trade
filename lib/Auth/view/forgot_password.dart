import 'package:fast_trade/Utilities/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customTextField.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets.dart';
import '../../home_screen/view/MainScreen.dart';
import '../../home_screen/view/home_tabbar.dart';
import 'Register.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: gray1,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            Center(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: white, fontSize: 22),
                )),
            Center(
              child: Text(
                "Enter your details below to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(color: white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            CustomizeTextField(
              hintText: "abcd@gmail.com",
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Button(
              onTap: () {

              },
              text: 'GET EMAIL',
              color: starColor,
              borcolor: starColor,
            ),

          ],
        ),
      ),
    );
  }
}
