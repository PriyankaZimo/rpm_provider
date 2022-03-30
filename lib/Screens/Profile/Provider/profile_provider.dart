import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Profile/components/basic_details.dart';


class ProfileProvider extends ChangeNotifier{
  var select=0;
  selectCate() {

    switch(select){
      case 0:
        return const BasicDetails();
      case 1:
        return SizedBox(height: 1,);
    }
    notifyListeners();
  }

  void selectTab(int index) {
    select=index;
    notifyListeners();
  }
}
