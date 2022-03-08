import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/CommonWidget/circles_color.dart';
import 'package:rpm_provider/Screens/CreatePin/create_pin.dart';

import 'package:rpm_provider/Provider/verify_otp_provider.dart';

class VerifyOtpPage extends StatelessWidget {
  int pinLength = 4;

  late VerifyOtpProvider _verifyOtpProvider;

  @override
  Widget build(BuildContext context) {
    _verifyOtpProvider = context.read<VerifyOtpProvider>();
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.all(58.0),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                      color: Color(0xfffffffffffffff),
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Enter OTP code send on your mail id or\nPhone no.',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Consumer<VerifyOtpProvider>(
                  builder: (context, view, child) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 50,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          onChanged: (val) {
                            view.nextField(
                                value: val, focusNode: (view.pin1FocusNode));
                          },
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
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
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            focusNode: view.pin1FocusNode,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: (view.pin2FocusNode));
                            },
                            decoration: InputDecoration(
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 50,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          focusNode: view.pin2FocusNode,
                          onChanged: (val) {
                            view.nextField(
                                value: val, focusNode: (view.pin3FocusNode));
                          },
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 50,
                        child: TextFormField(
                          maxLength: 1,
                          style: TextStyle(color: Colors.white),
                          focusNode: view.pin3FocusNode,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          onChanged: (val) {
                            view.nextField(
                                value: val, focusNode: (view.pin4FocusNode));
                          },
                          decoration: InputDecoration(
                              counterText: "",
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '160 second Remaining',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '0/3 Attempts',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreatePin()));
                },
                child: Container(
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
              Padding(
                padding: EdgeInsets.only(top: 80, left: 200),
                child: Text(
                  'Need Help?',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),], ),
        ),
      ),
    );
  }
}
