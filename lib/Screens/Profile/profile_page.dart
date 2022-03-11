import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Profile/Provider/profile_provider.dart';

import 'components/my_clipper.dart';
import 'components/scanqr_page.dart';

class ProfilePage extends StatelessWidget {
  List text = ['   Basic Details', 'Business Details'];
  late ProfileProvider _profileProvider;

  @override
  Widget build(BuildContext context) {
    _profileProvider = context.watch<ProfileProvider>();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFf99d1c).withOpacity(0.7),
                              Color(0xFFee3d7e).withOpacity(0.7)
                            ]),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                BackButton(
                                  color: Colors.black,
                                ),
                                SizedBox(width: 120,),
                                Center(
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            //// List Text
                            Center(
                              child: Container(
                                height:50,
                                width: 350,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 2,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            _profileProvider.selectTab(index);
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10, left: 20),
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                width: 160,
                                                color: Colors.transparent,
                                                child: Text(
                                                  text[index],
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: _profileProvider
                                                                  .select ==
                                                              index
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                              _profileProvider.select == index
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      height: 7,
                                                      width: 130,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .orange[700],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: Colors
                                                                    .black12,
                                                                offset: Offset(
                                                                    5, 5),
                                                                blurRadius: 2)
                                                          ]),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                        )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ////Profile Image
                  _profileProvider.select == 0
                      ? Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  clipBehavior: Clip.none,
                                  margin: EdgeInsets.only(top: 165),
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xFFF57C00), width: 3),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(top: 230, left: 70),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Color(0xFFF57C00), width: 1.4),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              _profileProvider.selectCate(),
            ],
          ),
        ));
  }
}
