import 'package:flutter/material.dart';
import 'package:orange_course/shared/components/textFormField.dart';

import '../../model/onBoarding/onBoarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  OnBoardingModel onBoardingModel;

  OnBoardingItem(this.onBoardingModel);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screen_size.height * 0.15,
        ),
        Image.asset(onBoardingModel.image),
        const SizedBox(
          height: 30,
        ),
        Text(
          onBoardingModel.title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onBoardingModel.body,
          style: const TextStyle(
            color: Color(0xff646161),
            fontSize: 14,
            fontFamily: 'Inter',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
