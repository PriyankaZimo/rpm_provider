import 'package:flutter/cupertino.dart';
import 'package:rpm_provider/Screens/Availability/Components/avail_dropdown.dart';
import 'package:rpm_provider/Screens/Availability/Components/availability_page.dart';
import 'package:rpm_provider/Screens/Availability/Components/unavail_page.dart';
import 'package:rpm_provider/Screens/Offers/Components/add_new_offer.dart';

class AvailabilityProvider extends ChangeNotifier {
  List avail = [
    {'txt': "Sunday", "select": "false"},
    {'txt': "Monday", "select": "false"},
    {'txt': "Tuesday", "select": "false"}
  ];


  var select = 0;
  bool sel=true;

  selectContain() {
    switch (select) {
      case 0:
        return AvailabilityPage();
      case 1:
        return UnAvailability();
    }
    notifyListeners();
  }

  void selectTab(int index) {
    select = index;
    notifyListeners();
  }

 selectButton(bool val) {
    sel=val;
    notifyListeners();
    }



}
