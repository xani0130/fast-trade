import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';

//button style

// ignore: must_be_immutable
class Button extends StatefulWidget {
  dynamic onTap;
  final String text;
  dynamic color;
  dynamic borcolor;
  dynamic textcolor;
  dynamic width;
  dynamic height;
  // ignore: use_key_in_widget_constructors
  Button({
    required this.onTap,
    required this.text,
    this.color,
    this.borcolor,
    this.textcolor,
    this.width,
    this.height,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return  Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      height: widget.height ?? media.width * 0.15,
      width: (widget.width != null) ? widget.width : null,
      child: ElevatedButton(
        onPressed:  widget.onTap,
        style: ElevatedButton.styleFrom(
            onPrimary: buttonText.withOpacity(0.6),
            alignment: Alignment.center,
            backgroundColor: (widget.color != null) ? widget.color : buttonColor,
            fixedSize: const Size(300, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),),
            side:  BorderSide(
              color: (widget.borcolor != null) ? widget.borcolor : buttonColor,
              width: 1,
            )),
        child:FittedBox(
          fit: BoxFit.contain,
          child: Text(
            widget.text,
            style: GoogleFonts.roboto(
                fontSize: media.width * eighteen,
                color: (widget.textcolor != null) ? widget.textcolor : page,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}

//input field style

// ignore: must_be_immutable
class InputField extends StatefulWidget {
  dynamic icon;
  dynamic onTap;
  final String text;
  final TextEditingController textController;
  dynamic inputType;
  dynamic maxLength;
  dynamic color;

  // ignore: use_key_in_widget_constructors
  InputField(
      {this.icon,
      this.onTap,
      required this.text,
      required this.textController,
      this.inputType,
      this.maxLength,
      this.color});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return TextFormField(
      maxLength: (widget.maxLength == null) ? null : widget.maxLength,
      keyboardType: (widget.inputType == null)
          ? TextInputType.emailAddress
          : widget.inputType,
      controller: widget.textController,
      decoration: InputDecoration(
          counterText: '',
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: (isDarkTheme == true)
                ? textColor.withOpacity(0.7)
                : inputfocusedUnderline,
            width: 1.2,
            style: BorderStyle.solid,
          )),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: (widget.color == null)
                ? (isDarkTheme == true)
                    ? textColor.withOpacity(0.5)
                    : inputUnderline
                : widget.color,
            width: 1.2,
            style: BorderStyle.solid,
          )),
          prefixIcon: (widget.icon != null)
              ? Icon(
                  widget.icon,
                  size: media.width * 0.064,
                  color: textColor,
                )
              : null,
          hintText: widget.text,
          hintStyle: GoogleFonts.roboto(
            fontSize: media.width * sixteen,
            color:
                (isDarkTheme == true) ? textColor.withOpacity(0.4) : hintColor,
          )),
      style: GoogleFonts.roboto(color: textColor),
      onChanged: widget.onTap,
    );
  }
}
