import 'package:flutter/material.dart';
import 'package:orange_course/screen/onBoarding/view_model.dart';
import 'package:provider/provider.dart';

import '../../shared/components/buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = 'on_boarding';
  MyProvide myProvide = MyProvide();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (c) => myProvide,
      builder: (context, widget) {
        var pro = Provider.of<MyProvide>(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                pro.num
                    ? Text('true',
                        style: TextStyle(
                          color: Colors.black,
                        ))
                    : Text(
                        'false',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
