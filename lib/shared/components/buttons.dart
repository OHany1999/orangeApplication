import 'package:flutter/material.dart';
import 'package:orange_course/shared/colors/const_color.dart';

class Button extends StatelessWidget {
  void Function() onPress;
  BorderStyle defaultButtonBorderStyle;
  String? text;
  Color defaultTextColor;
  double defaultFontSize;
  String defaultFontFamily;
  FontWeight defaultFontWeight;
  Color defaultButtonColor;
  Color defaultButtonBorderColor;
  double defaultBorderSideWidth;
  double defaultButtonBorderRadius;
  double buttonWidth;
  double buttonHeight;
  Button({
    required this.onPress,
    required this.defaultButtonBorderStyle,
    required this.text,
    this.defaultTextColor = Colors.white,
    this.defaultFontSize = 20.0,
    this.defaultFontFamily = 'Inter',
    this.defaultFontWeight = FontWeight.w700,
    this.defaultButtonColor = orange,
    this.defaultButtonBorderColor = orange,
    this.defaultBorderSideWidth = 0.8,
    this.defaultButtonBorderRadius = 10.0,
    this.buttonWidth = 397.0,
    this.buttonHeight = 55.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(defaultButtonColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(
                style: defaultButtonBorderStyle,
                color: defaultButtonBorderColor,
                width: defaultBorderSideWidth,
              ),
              borderRadius: BorderRadius.circular(
                defaultButtonBorderRadius,
              ))),
        ),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: defaultFontSize,
            color: defaultTextColor,
            fontFamily: defaultFontFamily,
            fontWeight: defaultFontWeight,
          ),
        ),
      ),
    );
  }
}
