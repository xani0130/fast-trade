import 'package:flutter/material.dart';

import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customTextField.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets.dart';
import 'package:get/get.dart';

import 'OTP_screen.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: gray1,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
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
                "Register",
                style: TextStyle(color: white, fontSize: 22),
              )),
              Center(
                  child: Text(
                "Enter your details below to Register",
                style: TextStyle(color: white, fontSize: 16),
              )),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Name",
                style: TextStyle(
                    color: white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const CustomizeTextField(
                hintText: "Your Full Name",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Email",
                style: TextStyle(
                    color: white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const CustomizeTextField(
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
              const CustomizeTextField(
                hintText: "Your Password",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Re-Type Password",
                style: TextStyle(
                    color: white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const CustomizeTextField(
                hintText: "Re - Type Your Password",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Text("By clicking to register you are agree to our ",
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                    )),
              ),
              Center(
                child: Text('Terms & Conditions',
                    style: TextStyle(
                      color: starColor,
                      fontSize: 16,
                    )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                onTap: () {
                  Get.to(OTPScreen());

                },
                text: 'REGISTER',
                color: starColor,
                borcolor: starColor,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: white, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                      Get.to(LoginScreen());
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: starColor),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
