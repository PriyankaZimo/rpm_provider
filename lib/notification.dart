import 'package:flutter/material.dart';
import 'package:rpm_provider/CommonWidget/notification_circle.dart';

class NotificationPage extends StatelessWidget {
  List text = [
    'Lorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet'
  ];
  List texy = [
    'Lorem\nLorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet',
  ];
  List texf = [
    'Lorem\nLorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet',
  ];
  List texj = [
    'Lorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet',
    'Lorem\nLorem ipsum dolor sit amet'
  ];

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
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -55,
              child: Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(200))),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -60,
              child: Container(
                height: 250,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(170),
                      topRight: Radius.circular(100)),
                  color: Colors.redAccent[100],
                ),
              ),
            ),
            Positioned(
              bottom: -70,
              right: -40,
              child: Container(
                  height: 200,
                  width: 200,
                  // margin: EdgeInsets.only(right: 300),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 2.0, color: Colors.white.withOpacity(0.5)),
                  )),
            ),
            Positioned(
              bottom: -90,
              right: -40,
              child: Container(
                height: 200,
                width: 200,
                // margin: EdgeInsets.only(right: 300),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2.0, color: Colors.white.withOpacity(0.5)),
                ),
              ),
            ),
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
                                    ),SizedBox(width: 20,),

                                    Text(text[index]),
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
                                    ),SizedBox(width: 20,),
                                    Text(texy[index]),
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
                    padding:  EdgeInsets.only(left: 20),
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
                                    SizedBox(width: 20,),
                                    Text(texf[index]),
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
                    padding:EdgeInsets.only(left: 20),
                    child: Text('Jan,31,2022'),
                  ),
                  Center(
                    child: SizedBox(
                      height: 320,
                      child: ListView.builder(
                          physics:NeverScrollableScrollPhysics(),
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
                                    ),SizedBox(width: 20,),
                                    Text(texj[index]),
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
