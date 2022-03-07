import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rpm_provider/Provider/enter_pin_provider.dart';

class EnterPin extends StatelessWidget {
  late EnterPinProvider _enterPinProvider;

  @override
  Widget build(BuildContext context) {
    _enterPinProvider = context.read<EnterPinProvider>();
    return Scaffold(
      appBar: AppBar(

      ),

      body: Container(
          padding: EdgeInsets.only(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFf06771), Color(0xFFf5A57C)])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Enter PIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
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
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: (view.pin1FocusNode));
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
                            style: TextStyle(color: Colors.white),
                            focusNode: view.pin3FocusNode,
                            onChanged: (val) {
                              view.nextField(
                                  value: val, focusNode: (view.pin4FocusNode));
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(
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
                ),
              ],
            ),
          )),
    );
  }
}
