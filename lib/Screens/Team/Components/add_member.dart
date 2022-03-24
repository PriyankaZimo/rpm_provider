// import 'package:flutter/material.dart';
// import 'package:provider/src/provider.dart';
// import 'package:rpm_provider/Screens/Team/Provider/add_provider.dart';
//
// class AddMembers extends StatelessWidget {
//   late AddProvider _addProvider;
//   List text = ['Profile', 'Availability'];
//
//   @override
//   Widget build(BuildContext context) {
//     _addProvider = context.watch<AddProvider>();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: BackButton(
//           color: Colors.black,
//         ),
//         title: Text(
//           'Add member',
//           style: TextStyle(color: Colors.black, fontSize: 25),
//         ),
//       ),
//       body: Column(
//
//         children: [
//           Center(
//             child: Container(
//               padding: EdgeInsets.only(left: 3),
//               height: 60,
//               width: 320,
//               child: ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                   itemCount: 2,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) => GestureDetector(
//                         onTap: () {
//                           _addProvider.selectTab(index);
//                         },
//                         child: Container(
//
//                           margin: EdgeInsets.all(10),
//                           width: 120,
//                           decoration: BoxDecoration(
//                             boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(3,3),blurRadius: 3)],
//                               borderRadius: BorderRadius.circular(5),
//                               color: _addProvider.select == index
//                                   ? Colors.orange[700]
//                                   : Colors.white,
//                               border: Border.all(color: Colors.orange)),
//                           child: Center(
//                               child: Text(
//                             text[index],
//                             style: TextStyle(
//                                 color: _addProvider.select == index
//                                     ? Colors.white
//                                     : Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                         ),
//                       )),
//             ),
//           ),
//           _addProvider.selectContent()
//         ],
//       ),
//     );
//   }
// }

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
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
        leading: BackButton(
          color: Colors.black,
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
                        fontSize: MediaQuery.of(context).size.width * .030,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
                Tab(
                  child: Text(
                    "Availability",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .030,
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

          /// Profile content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
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
                              padding: EdgeInsets.all(15.0),
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
                                        Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              /*hintText: "Enter your Contact No",*/
                                              /*        labelText: 'Description',*/
                                              hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.black),
                                              fillColor: Color(0xffe5e5e5),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Color(0xffB9B9B9)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'To',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              /*hintText: "Enter your Contact No",*/
                                              /*        labelText: 'Description',*/
                                              hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.black),
                                              fillColor: Color(0xffe5e5e5),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Color(0xffB9B9B9)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.calendar_today,
                                          color: Colors.black,
                                          size: 24.0,
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
