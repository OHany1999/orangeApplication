import 'package:flutter/material.dart';

import '../colors/const_color.dart';

class MyTextFormField extends StatelessWidget {
  TextEditingController controller;
  String? Function(String?) validate;
  String text;
  Color formFieldBorderColor;
  double formFieldBorderRadius;
  TextInputType keyboardType;
  bool isPassword;
  Widget? suffixIcon;
  Color? suffixIconColor;

  MyTextFormField({
    required this.controller,
    required this.validate,
    required this.text,
    this.suffixIcon,
    this.suffixIconColor,
    this.isPassword = false,
    this.keyboardType = TextInputType.name,
    this.formFieldBorderColor = borderColor,
    this.formFieldBorderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        hintText: text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(formFieldBorderRadius),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(formFieldBorderRadius),
            borderSide: const BorderSide(
              color: borderColor,
            )),
      ),
    );
  }
}
