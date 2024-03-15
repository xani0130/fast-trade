import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Utilities/styles.dart';
import '../../Utilities/widgets.dart';
import 'Register.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String _otp1 = '';
  String _otp2 = '';
  String _otp3 = '';
  String _otp4 = '';
  String changeOtp = '';
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

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
              "Verification",
              style: TextStyle(color: white, fontSize: 22),
            )),
            Center(
              child: Text(
                "Enter your OTP below to get registered",
                textAlign: TextAlign.center,
                style: TextStyle(color: white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "OTP",
              style: TextStyle(
                  color: white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  alignment: Alignment.center,
                  width: width * 0.12,

                  child: TextFormField(
                    cursorColor: Colors.white,
                    onChanged: (val) {
                      if (val.length == 1) {
                        setState(() {
                          _otp1 = val;
                          changeOtp = _otp1 + _otp2 + _otp3 + _otp4;
                          FocusScope.of(context).nextFocus();
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                         ),
                    // style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  alignment: Alignment.center,
                  width: width * 0.12,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    onChanged: (val) {
                      if (val.length == 1) {
                        setState(() {
                          _otp2 = val;
                          changeOtp = _otp1 + _otp2 + _otp3 + _otp4;
                          FocusScope.of(context).nextFocus();
                        });
                      } else {
                        setState(() {
                          FocusScope.of(context).previousFocus();
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        counterText: '',
                        border:  InputBorder.none,),
                    // style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  alignment: Alignment.center,
                  width: width * 0.12,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    onChanged: (val) {
                      if (val.length == 1) {
                        setState(() {
                          _otp3 = val;
                          changeOtp = _otp1 + _otp2 + _otp3 + _otp4;
                          FocusScope.of(context).nextFocus();
                        });
                      } else {
                        setState(() {
                          FocusScope.of(context).previousFocus();
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        counterText: '',
                      border: InputBorder.none,),
                    // style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  alignment: Alignment.center,
                  width: width * 0.12,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    onChanged: (val) {
                      if (val.length == 1) {
                        setState(() {
                          _otp4 = val;
                          changeOtp = _otp1 + _otp2 + _otp3 + _otp4;
                          FocusScope.of(context).nextFocus();
                        });
                      } else {
                        setState(() {
                          FocusScope.of(context).previousFocus();
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        counterText: '',
                      border: InputBorder.none,),
                    // style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Button(
              onTap: () {},
              text: 'VERIFY',
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
                  "Didn`t received OTP?",
                  style: TextStyle(color: white, fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(Register());
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(color: starColor, fontSize: 16),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
