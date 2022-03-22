import 'package:flutter/material.dart';
import 'dart:math' as math;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 25.0,
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
            height: 18,
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
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                             decoration: new BoxDecoration(
                          color: Colors.white,
                               borderRadius: BorderRadius.circular(30),
                          border:
                          Border.all(color: Color(0xffF47D3A), width: 1   ),

                        ),
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                clipBehavior:Clip.antiAlias ,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Color(0xffF47D3A), width: 2),

                                ),
                                child: Image.network('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404-300x300.jpg',scale: 1,),
                              ),
                              Text('Jane Cooper',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(

                                    hintText: "",
                                    labelText: 'Mobile Number',
                                    hintStyle:
                                    TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                                    fillColor: Color(0xffe5e5e5),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                                    ),
                                  ),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(

                                    hintText: "",
                                    labelText: 'Mobile Number',
                                    hintStyle:
                                    TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                                    fillColor: Color(0xffe5e5e5),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                                    ),
                                  ),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(

                                    hintText: "",
                                    labelText: 'Mobile Number',
                                    hintStyle:
                                    TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                                    fillColor: Color(0xffe5e5e5),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 60),
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(boxShadow: <BoxShadow>[
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
                AvailabilityPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
