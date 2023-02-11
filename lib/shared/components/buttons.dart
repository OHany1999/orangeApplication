import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button extends StatelessWidget {
  String buttonText;
  void Function() onPress;
  Button({
    required this.buttonText,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      )),
    );
  }
}
