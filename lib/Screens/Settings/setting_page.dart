import 'package:flutter/material.dart';
import 'package:rpm_provider/Util/constants.dart';
import 'Components/change_password.dart';
import 'Components/currency_page.dart';
import 'Components/help_page.dart';
import 'Components/policies_page.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
        ),

        /// Setting List
        body: ListView.builder(
            itemCount: settext.length,
            itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  margin: EdgeInsets.all(10),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFFFCCBC))),
                  child: Row(
                    children: [
                      Text(
                        settext[index]['txt'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      /// Page Call
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            print(index);
                            switch (index) {

                              case 0:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoliciesPage()));
                                break;
                              case 1:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangePassword()));
                                break;
                              case 2:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CurrencyPage()));
                                break;
                              case 3:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HelpPage()));
                                break;
                            }
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined,size: 20,))
                    ],
                  ),
                )));
  }
}
