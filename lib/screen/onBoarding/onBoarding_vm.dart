import 'package:flutter/material.dart';

class OnBoardingViewModel extends ChangeNotifier{

bool num = false;
void enter(){
  num = !num;
  notifyListeners();
}
//---------------------------------------------
bool isLast = false;
void IsLast(){
  isLast = true;
  notifyListeners();
}
  void IsNotLast(){
    isLast = false;
    notifyListeners();
  }

Widget ShowSkip(){
  if(isLast == false){
    return TextButton(
      onPressed: (){},
      child: Text('skip',style: TextStyle(color: Color(0xffE872FB),fontSize: 16,fontWeight: FontWeight.w700),),
    );
  }else{
    return SizedBox();
  }
}
}