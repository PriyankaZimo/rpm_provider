import 'package:flutter/material.dart';

import '../CommonWidget/circles_color.dart';

class CreatePin extends StatefulWidget {
  @override
  State<CreatePin> createState() => CreatePinState();
}

late Size size;

class CreatePinState extends State<CreatePin> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFEEF1F3),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              CircleColor(),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                  color: Color(0xfff5A57c),
                  fontSize: 50,
                  fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                  height: size.width <= 380
                      ? MediaQuery.of(context).size.height / 1.9
                      : 580,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFf06771), Color(0xFFf5A57C)]),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(100))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 120),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: false,
                          decoration: InputDecoration(
                              /*labelText: 'Email',*/
                              hintText: 'Create New PIN',
                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 20.0)),
                          /*validator: (value) {
              if (value!.length == 0) {
                  return "* Required Email";
                  // } else if (value.length < 6) {
                  return "Password should be atleast 6 characters";
              } else
                  return null;
            },*/
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: false,
                          decoration: InputDecoration(
                              /*labelText: 'Email',*/
                              hintText: 'Create New PIN',
                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 20.0)),
                          /*validator: (value) {
              if (value!.length == 0) {
                  return "* Required Email";
                  // } else if (value.length < 6) {
                  return "Password should be atleast 6 characters";
              } else
                  return null;
            },*/
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        new GestureDetector(
                            onTap: () {
                              print("Container clicked");
                            },
                            child: Container(
                              height: 50,
                              width: 220.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "submit",
                                  style: TextStyle(
                                      color: Color(0xfff27a74),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
