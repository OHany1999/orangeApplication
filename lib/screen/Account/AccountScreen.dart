import 'package:flutter/material.dart';

import '../../shared/components/buttons.dart';

// ignore: use_key_in_widget_constructors
class AccountScreen extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
                left: 10.0,
                right: 20.0,
              ),
              child: Image.asset(
                'assets/images/welcome_image.png',
                width: 355,
                height: 300,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Lets Get Started',
              style: TextStyle(
                color: Color(0xFF2B0E0E),
                fontSize: 32.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                color: Color(0xFF5A5959),
                fontSize: 16.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Button(
              text: 'Login',
              defaultButtonBorderStyle: BorderStyle.none,
              onPress: () {},
              defaultFontFamily: 'Nunito',
              // text: 'Login',
            ),
            const SizedBox(
              height: 16.0,
            ),
            Button(
              text: 'Create an Account',
              onPress: () {},
              defaultButtonColor: Colors.white,
              defaultTextColor: Colors.black,
              defaultFontFamily: 'Nunito',
              defaultFontWeight: FontWeight.w700,
              defaultFontSize: 20.0,
              defaultButtonBorderColor: Colors.blueAccent,
              defaultButtonBorderStyle: BorderStyle.solid,
              // text: 'Create an Account',
            ),
          ],
        ),
      ),
    );
  }
}
