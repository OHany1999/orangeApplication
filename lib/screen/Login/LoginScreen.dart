import 'package:flutter/material.dart';
import 'package:orange_course/shared/components/buttons.dart';
import 'package:orange_course/shared/components/textFormField.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import '../../shared/colors/const_color.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenSize * 0.05,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 3),
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: ScreenSize * 0.20,
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: MyTextFormField(
                        controller: emailController,
                        validate: (text) {},
                        text: 'Enter Your Email'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30.99,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: Color(0xff8C78C7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: MyTextFormField(
                        controller: passwordController,
                        validate: (text) {},
                        text: 'Enter Your Password',
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Button(
                onPress: () {},
                defaultButtonBorderStyle: BorderStyle.solid,
                text: 'log in',
                defaultFontFamily: 'Nunito',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'or',
                style: TextStyle(
                  color: Color(
                    0xff5A5959,
                  ),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/google.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff3B5998),
                    child: Image.asset('assets/images/face.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t Have an Account?', textAlign: TextAlign.end,),
                SizedBox(width: 3),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Creat an Account',
                    style: TextStyle(
                      color: Color(0xff8C78C7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
