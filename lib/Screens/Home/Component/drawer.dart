import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Availability/availability_page.dart';
import 'package:rpm_provider/Screens/ClientPage/client_page.dart';
import 'package:rpm_provider/Screens/Offers/offer.dart';
import 'package:rpm_provider/Screens/Profile/profile_page.dart';
import 'package:rpm_provider/Screens/Services/service_page.dart';
import 'package:rpm_provider/Screens/Settings/setting_page.dart';
import 'package:rpm_provider/Screens/Team/team_page.dart';
import 'package:rpm_provider/Util/constants.dart';

class DrawerPage extends StatelessWidget {
  // late DrawerProvider _drawerProvider;

  @override
  Widget build(BuildContext context) {
    // _drawerProvider = context.read<DrawerProvider>();
    return Container(
      width: 270,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              'ISKEDO',
              style: TextStyle(color: Color(0xFFFF8A80), fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Color(0xFFFF8A80),
              thickness: 1,
            ),
          ),

          /// List View
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: type.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                print(index);
                switch (index) {
                  case 0:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                    break;
                  case 1:
                    Container();
                    break;
                  case 2:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AvailabilityPage()));
                    break;
                  case 3:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ClientPage()));
                    break;
                  case 4:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TeamPage()));
                    break;
                  case 5:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ServicePage()));
                    break;
                  case 6:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OfferPage()));
                    break;
                  case 7:
                    Container();
                    break;
                  case 8:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                    break;
                  case 9:
                    Container();
                }
              },
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),

                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0xFFFF8A80), width: 4)),
                          child: Container(
                            padding: EdgeInsets.all(index == 0 ? 0 : 10),
                            height: 48,
                            width: 48,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(3, 3),
                                    blurRadius: 3),
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(5, 5),
                                    blurRadius: 5)
                              ],
                            ),
                            child: Image.asset(
                              type[index]['img'],
                              height: type[index]['size'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        /// List Text
                        Container(
                          child: Text(
                            type[index]['txt'],
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xFFFF8A80),
                      thickness: 0.6,
                    )
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
