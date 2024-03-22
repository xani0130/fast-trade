import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'styles.dart';

class CustomStepperCode extends StatelessWidget {
  final int currentStep;

  CustomStepperCode({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/icons/ref_msg.png')
            ),
            Expanded(
              child: Container(
                height: 2,
                color: starColor,
              ),
            ),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset( 'assets/icons/ref_invite.png')
            ),
            Expanded(
              child: Container(
                height: 2,
                color: Colors.grey,
              ),
            ),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/icons/ref_earn.png')
            ),
          ],
        ),
        // Step titles
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Invite\na friend',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize:
                  width * fourteen,
                  color: white,
                )),
            Text('Friend\nComplete\nRegistration',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize:
                  width * fourteen,
                  color: white,
                )),
            Text(
                'Get\nReward',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize:
                  width * fourteen,
                  color: white,
                )
            ),
          ],
        ),
      ],
    );
  }
}
class CustomStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CustomStepperCode(currentStep: 2);
  }
}

