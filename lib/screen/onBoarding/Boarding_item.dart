import 'package:flutter/material.dart';
import 'package:orange_course/shared/components/textFormField.dart';

import '../../model/onBoarding/onBoarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  OnBoardingModel onBoardingModel;

  OnBoardingItem(this.onBoardingModel);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset(onBoardingModel.image),
        SizedBox(
          height: 30,
        ),
        Text(
          onBoardingModel.title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MyTextFormFaild(controller: controller,validate: (text){},text: 'fdsfd',),
        Text(
          onBoardingModel.body,
          style: TextStyle(
              color: Color(0xff646161), fontSize: 14, fontFamily: 'Inter',),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
