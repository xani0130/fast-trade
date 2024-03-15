 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customTextField.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets.dart';
import '../../home_screen/view/MainScreen.dart';
import '../../home_screen/view/home_tabbar.dart';
import 'Register.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: gray1,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Center(
                child: Text(
              "Sign In",
              style: TextStyle(color: white, fontSize: 22),
            )),
            Center(
                child: Text(
              "Enter your details below to sign in",
              style: TextStyle(color: white, fontSize: 16),
            )),
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
              height: height * 0.02,
            ),
            Text(
              "Password",
              style: TextStyle(
                  color: white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            CustomizeTextField(
              hintText: "Your Password",
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Get.to(ForgotPassword());
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: starColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Button(
              onTap: () {
                Get.to(HomeTabbar());

              },
              text: 'SIGN IN',
              color: starColor,
              borcolor: starColor,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    width: 110,
                    color: starColor,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'or sign in with',
                  style: TextStyle(color: white, fontSize: 16),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    width: 110,
                    color: starColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginCustomCircleAvtar(
                  border: Border.all(width: 0),
                  bgcolor: gray,
                  image: Image.asset(
                    'assets/images/facebook.png',
                    color: starColor,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                LoginCustomCircleAvtar(
                  border: Border.all(width: 0),
                  bgcolor: gray,
                  image: Image.asset(
                    'assets/images/apple.png',
                    color: starColor,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                LoginCustomCircleAvtar(
                  border: Border.all(width: 0),
                  bgcolor: gray,
                  image: Image.asset(
                    'assets/images/google.png',
                    color: starColor,
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: white, fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Get.to( Register());

                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: starColor,fontSize: 16),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
