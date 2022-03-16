import 'package:flutter/cupertino.dart';
import 'package:rpm_provider/Screens/Profile/profile_page.dart';
import 'package:rpm_provider/Screens/Team/Components/addprofile_page.dart';
import 'package:rpm_provider/Screens/Team/Components/availability_page.dart';

class AddProvider extends ChangeNotifier{
var select=0;
  selectContent(){
    switch (select){
      case 0:
        return AddProfile();
      case 1:
        return AvailabilityPage();
    }
    notifyListeners();
  }

  void selectTab(int index) {
    select=index;
    notifyListeners();
  }
}