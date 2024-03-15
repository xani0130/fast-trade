import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';


class CustomizeTextField extends StatelessWidget {
  final String? hintText;
  final int? miniText;
  final int? maxText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? isKeyboardType;
  final TextEditingController? controller;
  final bool? obscureText;
  final Function? Onchanged;
  final bool? enble;

  const CustomizeTextField(
      {this.hintText,
        this.controller,
        this.prefixIcon,
        this.obscureText,
        this.labelText,
        this.isKeyboardType,
        this.suffixIcon,
        this.maxText,
        this.miniText,
        this.Onchanged,
        this.enble});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextField(
      style: TextStyle(color: Colors.white),
      enabled: enble,
      cursorColor: Colors.white,
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: isKeyboardType,
      minLines: miniText,
      maxLines: maxText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: white.withOpacity(0.1),
        filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle:  TextStyle(color: gray),
        hintText: hintText,
      ),
      textInputAction: TextInputAction.done,
    );
  }
}

class CustomizeTextField1 extends StatelessWidget {
  final String? hintText;
  final int? miniText;
  final int? maxText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? isKeyboardType;
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? enble;
  final void Function(String)? change;

  const CustomizeTextField1(
      {this.hintText,
        this.controller,
        this.prefixIcon,
        this.obscureText,
        this.labelText,
        this.isKeyboardType,
        this.suffixIcon,
        this.maxText,
        this.miniText,
        this.enble,this.change,
      });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        TextField(

          onChanged: change,
          enabled: enble,
          controller: controller,
          obscureText: obscureText ?? false,
          keyboardType: isKeyboardType,
          minLines: miniText,
          maxLines: maxText,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color:  Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffE8ECF4), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintStyle: const TextStyle(color: Colors.grey),
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
            ),
          ),
          textInputAction: TextInputAction.done,
        ),
        SizedBox(
          height: height * 0.025,
        )
      ],
    );
  }
}
