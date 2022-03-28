import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Home/home_page.dart';
import 'dart:math' as math;

import '../team_page.dart';
import 'availability_page.dart';

class AddMembers extends StatefulWidget {
  @override
  _AddMembersState createState() => _AddMembersState();
}

class _AddMembersState extends State<AddMembers>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  var val;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => TeamPage()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25.0,
          ),
        ),
        elevation: 0,
        title: Text(
          'Add Member',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Color(0xffF47D3A)),
              indicatorWeight: 1,
              tabs: [
                Tab(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .027,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
                Tab(
                  child: Text(
                    "Availability",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .028,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Color(0xffF47D3A), width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xffF47D3A), width: 2),
                                    ),
                                    child: Image.network(
                                      'https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404-300x300.jpg',
                                      scale: 1,
                                    ),
                                  ),
                                  Text(
                                    'Jane Cooper',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "",
                                        labelText: 'First Name',
                                        hintStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xffB9B9B9)),
                                        fillColor: Color(0xffe5e5e5),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xffB9B9B9)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "",
                                        labelText: 'Last Name',
                                        hintStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xffB9B9B9)),
                                        fillColor: Color(0xffe5e5e5),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xffB9B9B9)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "",
                                        labelText: 'Email',
                                        hintStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xffB9B9B9)),
                                        fillColor: Color(0xffe5e5e5),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xffB9B9B9)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextFormField(
                                      maxLength: 10,
                                      keyboardType: TextInputType.emailAddress,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        prefixIcon: CountryCodePicker(
                                          textStyle: TextStyle(
                                              color: Color(0xffB9B9B9)),
                                          initialSelection: 'IN',
                                          showDropDownButton: true,
                                          showCountryOnly: true,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.call_outlined,
                                          color: Colors.white,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xffB9B9B9)),
                                        ),
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "",
                                        labelText: 'Assign Service',
                                        hintStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xffB9B9B9)),
                                        fillColor: Color(0xffe5e5e5),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xffB9B9B9)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    margin: EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Status',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: DropdownButton<String>(
                                            hint: Text(''),
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            value: val,
                                            items: <String>[
                                              'Active',
                                              'Non-Active',
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (v) {
                                              setState(() {
                                                val = v.toString();
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Allow Login',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          'Off',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Switch(
                                            value: isSwitched,
                                            onChanged: (value) {
                                              setState(() {
                                                isSwitched = value;

                                                isSwitched==true?   showGeneralDialog(
                                                  context: context,
                                                  barrierLabel: "Barrier",
                                                  barrierDismissible: true,
                                                  barrierColor: Colors.black
                                                      .withOpacity(0.5),
                                                  transitionDuration: Duration(
                                                      milliseconds: 700),
                                                  pageBuilder: (_, __, ___) {
                                                    return Center(
                                                      child: Container(
                                                        height: 240,

                                                    ),
                                                    );
                                                  },
                                                  transitionBuilder:
                                                      (_, anim, __, child) {
                                                    Tween<Offset> tween;
                                                    if (anim.status ==
                                                        AnimationStatus
                                                            .reverse) {
                                                      tween = Tween(
                                                          begin: Offset(-1, 0),
                                                          end: Offset.zero);
                                                    } else {
                                                      tween = Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset.zero);
                                                    }

                                                    return SlideTransition(
                                                      position:
                                                          tween.animate(anim),
                                                      child: FadeTransition(
                                                        opacity: anim,
                                                        child: child,
                                                      ),
                                                    );
                                                  },
                                                ):SizedBox();
                                              });
                                            },
                                            activeTrackColor:
                                                Colors.lightGreenAccent,
                                            activeColor: Colors.green,
                                          ),
                                        ),
                                        Text(
                                          'On',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                                margin: EdgeInsets.only(top: 60),
                                height: 50,
                                width: 220,
                                decoration:
                                    BoxDecoration(boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffF47D3A),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Save',
                                      style: TextStyle(fontSize: 20),
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AvailabilityPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
