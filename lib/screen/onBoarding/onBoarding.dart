import 'package:flutter/material.dart';
import 'package:orange_course/screen/onBoarding/Boarding_item.dart';
import 'package:orange_course/screen/onBoarding/onBoarding_vm.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/onBoarding/onBoarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = 'on_boarding';
  var boardingController = PageController();
  OnBoardingViewModel onBoardingViewModel = OnBoardingViewModel();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: 'assets/images/work.png',
        title: 'Never Stop Learning',
        body: 'Expand you Knowledge in Covid 19 Lockdown'),
    OnBoardingModel(
        image: 'assets/images/success.png',
        title: 'Complet Courses',
        body: 'Eas to enroll Courses & Complete with in a short time'),
    OnBoardingModel(
        image: 'assets/images/list.png',
        title: 'Complet Courses',
        body: 'Eas to enroll Courses & Complete with in a short time'),
  ];



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (c) => onBoardingViewModel,
      builder: (context, widget) {
        var pro = Provider.of<OnBoardingViewModel>(context);
        return Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40,left: 280),
                child: pro.ShowSkip(),
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) =>
                      OnBoardingItem(onBoardingList[index]),
                  physics: BouncingScrollPhysics(),
                  controller: boardingController,
                  itemCount: onBoardingList.length,
                  onPageChanged: (index){
                    if(index == onBoardingList.length -1){
                      pro.IsLast();
                    }else{
                      pro.IsNotLast();
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60),
                child: Column(children: [
                  SmoothPageIndicator(
                    controller: boardingController,
                    count: onBoardingList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xffFF6600),
                      spacing: 5.0,
                    ),
                  ),
                  SizedBox(height: 25,),
                  FloatingActionButton(
                    onPressed: () {
                      boardingController.nextPage(duration: Duration(milliseconds: 750), curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    backgroundColor: Color(0xffFF6600),
                  ),
                ],),
              ),

            ],
          ),
        );
      },
    );
  }
}
