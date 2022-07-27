import 'package:flutter/material.dart';
class Data extends ChangeNotifier{
  int val_provider = 0;
  void changedata(int newval){
    val_provider = newval;
    notifyListeners();
  }
}
class isListData extends ChangeNotifier{
  bool newisList = false;
  void changedata(bool newbool){
    newisList = newbool;
    notifyListeners();
  }
}
const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

LinearGradient kthemeGradient = LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [Color(0xFFA0468C),Color(0xFFE16C60)]);