import 'package:flutter/material.dart';

class EnterPinProvider extends ChangeNotifier{
  late FocusNode pin1FocusNode=FocusNode();
  late FocusNode pin2FocusNode=FocusNode();
  late FocusNode pin3FocusNode=FocusNode();
  late FocusNode pin4FocusNode=FocusNode();
  void nextField({required String value, required FocusNode focusNode}){
    if(value.length==1){
      focusNode.nextFocus();
    }
  }
}
