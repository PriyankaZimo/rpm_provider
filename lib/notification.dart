import 'package:flutter/material.dart';
import 'package:rpm_provider/CommonWidget/notification_circle.dart';

import 'Util/constants.dart';

class NotificationPage extends StatelessWidget {
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
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 10),
            child: Text(
              'Mark all read',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        ],
      ),
      // Circle Containers
      body: SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            NotificationCircle(),
            //COLUMN LIST
            Positioned(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 250,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(9),
                                height: 67,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFFFCCBC),
                                          blurRadius: 5,
                                          offset: Offset(1, 3))
                                    ]),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.redAccent[100]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(notif[index]['txt']),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, right: 10),
                                      child: Text('09:00AM'),
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Yesterday'),
                  ),
                  Center(
                    child: SizedBox(
                      height: 170,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(9),
                                height: 67,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFFFCCBC),
                                          blurRadius: 3,
                                          offset: Offset(1, 3))
                                    ]),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.redAccent[100]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(texy[index]['txt']),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, right: 20),
                                      child: Text('09:00AM'),
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Feb,01,2022'),
                  ),
                  Center(
                    child: Container(
                      height: 150,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(9),
                                height: 60,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFFFCCBC),
                                          blurRadius: 3,
                                          offset: Offset(1, 3))
                                    ]),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.redAccent[100]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(texf[index]['txt']),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, right: 20),
                                      child: Text('09:00AM'),
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Jan,31,2022'),
                  ),
                  Center(
                    child: SizedBox(
                      height: 320,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(9),
                                height: 60,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFFFCCBC),
                                          blurRadius: 3,
                                          offset: Offset(1, 3))
                                    ]),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.redAccent[100]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(texj[index]['txt']),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, right: 20),
                                      child: Text('09:00AM'),
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
