import 'package:flutter/material.dart';

class MyTextFormFaild extends StatelessWidget {
TextEditingController controller;
String? Function(String?) validate;
String text;

MyTextFormFaild({required this.controller,required this.validate,required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        hintText: text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
