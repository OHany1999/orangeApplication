import 'package:flutter/material.dart';
import 'package:orange_course/screen/login/login.dart';

class OnBoardingViewModel extends ChangeNotifier {
  bool num = false;
  void enter() {
    num = !num;
    notifyListeners();
  }

//---------------------------------------------
  bool isLast = false;
  void IsLast() {
    isLast = true;
    notifyListeners();
  }

  void IsNotLast() {
    isLast = false;
    notifyListeners();
  }

  Widget ShowSkip(BuildContext context) {
    if (isLast == false) {
      return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, LoginScreen.routeName);
        },
        child: const Text(
          'skip',
          style: TextStyle(
              color: Color(0xffE872FB),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
