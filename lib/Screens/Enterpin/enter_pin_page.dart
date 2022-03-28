// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Screens/Enterpin/Provider/enter_pin_provider.dart';
import 'package:rpm_provider/Screens/Home/home_page.dart';

class EnterPin extends StatelessWidget {
  late EnterPinProvider _enterPinProvider;

  @override
  Widget build(BuildContext context) {
    _enterPinProvider = context.read<EnterPinProvider>();

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFee3d7e).withOpacity(0.8),
                  Color(0xFFf99d1c).withOpacity(0.9)
                ]),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.all(58.0),
                  child: Text(
                    'Enter PIN',
                    style: TextStyle(
                        color: Color(0xfffffffffffffff),
                        fontSize: 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Type 4 digit PIN to Login',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(
                  height: 30,
                ),
                Consumer<EnterPinProvider>(
                  builder: (context, view, child) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 50,
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: view.pin1FocusNode);
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Container(
                          width: 40,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white),
                            focusNode: view.pin1FocusNode,
                            obscureText: true,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: (view.pin2FocusNode));
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Container(
                          width: 40,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            focusNode: view.pin2FocusNode,
                            obscureText: true,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: (view.pin3FocusNode));
                            },
                            textInputAction: TextInputAction.next,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Container(
                          width: 40,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            maxLength: 1,
                            style: TextStyle(color: Colors.white),
                            focusNode: view.pin3FocusNode,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 100),
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Color(0xFFEF5765),
                            fontSize: 23,
                            fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
