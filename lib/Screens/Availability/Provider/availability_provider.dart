import 'package:flutter/cupertino.dart';
import 'package:rpm_provider/Screens/Availability/Components/avail_page.dart';
import 'package:rpm_provider/Screens/Availability/Components/unavail_page.dart';

class AvailabilityProvider extends ChangeNotifier{
  var select=0;
  selectContain(){
    switch(select){
      case 0:
        return AvailPage();
      case 1:
        return UnAvailability();
    }
    notifyListeners();
  }
  void selectTab(int index) {
    select=index;
    notifyListeners();
  }
}