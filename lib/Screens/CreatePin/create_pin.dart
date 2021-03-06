// ignore_for_file: avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors, prefer_is_empty, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class CreatePin extends StatefulWidget {
  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF1F3),
      body: Container(
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
                      ))
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(58.0),
                      child: Text(
                        'Create PIN',
                        style: TextStyle(
                            color: Color(0xfffffffffffffff),
                            fontSize: 50,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 25),
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintText: 'Create New PIN',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "* Required PIN";
                              } else if (value.length < 8) {
                                return "Password should be atleast 8 characters";
                              } else
                                return null;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: 'Create New PIN',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "* Required PIn";
                              } else if (value.length < 8) {
                                return "Password should be atleast 8 characters";
                              } else
                                return null;
                            },
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 220.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                        color: Color(0xfff27a74),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
