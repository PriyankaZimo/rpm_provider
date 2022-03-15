import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/ClientPage/client_page.dart';
import 'package:rpm_provider/Screens/Offers/offer.dart';
import 'package:rpm_provider/Screens/Profile/profile_page.dart';
import 'package:rpm_provider/Screens/Services/service_page.dart';
import 'package:rpm_provider/Screens/Team/team_page.dart';
import 'package:rpm_provider/team_page.dart';

class DrawerProvider extends ChangeNotifier {
  int select = 0;

  selText(int index, BuildContext context) {
    select = index;
    print(select);
    switch (select) {
      case 0:
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) =>ClientPage()));
      case 4:
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) =>TeamPage()));
      case 5:
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => ServicePage()));
      case 6:
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => Offer()));
      case 7:
        return Container();
      case 8:
        return Container();
      case 9:
        return Container();
      case 10:
        return Container();
    }
    notifyListeners();
  }
}
