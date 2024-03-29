import 'package:fast_trade/Auth/ontroller.dart';
import 'package:flutter/material.dart';

import '../../Utilities/CustomCrcleContainer.dart';
import '../../Utilities/customTextField.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets.dart';
import 'package:get/get.dart';

import 'OTP_screen.dart';
import 'login.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

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
              CustomizeTextField(
                controller: _nameController,
                maxText: 1,
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
              CustomizeTextField(
                hintText: "abcd@gmail.com",
                controller: _emailController,
                maxText: 1,
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
              Obx(
                () => CustomizeTextField(
                  controller: _passwordController,
                  obscureText: !_authController.isRegPassVisible.value,
                  maxText: 1,
                  suffixIcon: IconButton(
                    onPressed: _authController.toggleRegPasswordVisibility,
                    icon: Icon(
                      _authController.isRegPassVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: offline,
                    ),
                  ),
                  hintText: "Your Password",
                ),
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
              Obx(
                () => CustomizeTextField(
                  controller: _cpasswordController,
                  obscureText: !_authController.isRegCPassVisible.value,
                  maxText: 1,
                  suffixIcon: IconButton(
                    onPressed: _authController.toggleRegCPasswordVisibility,
                    icon: Icon(
                      _authController.isRegCPassVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: offline,
                    ),
                  ),
                  hintText: "Re-Type Password",
                ),
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
