import 'package:flutter/material.dart';

class MyProvide extends ChangeNotifier{

bool num = false;
void enter(){
  num = !num;
  notifyListeners();
}

}