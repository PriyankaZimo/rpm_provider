import 'package:flutter/cupertino.dart';

class PasswordProvider extends ChangeNotifier{
  late bool hidePass=true;
  late bool hidePass1=true;
  void currentPass(){
    hidePass=!hidePass;
    notifyListeners();

  }
  void newPass(){
    hidePass1=!hidePass1;
    notifyListeners();
  }
}