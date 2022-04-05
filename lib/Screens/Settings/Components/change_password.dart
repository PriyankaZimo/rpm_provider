import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Settings/Provider/change_pass_provider.dart';

class ChangePassword extends StatelessWidget {
  var hidePassword = TextEditingController();
  var hidePassword1 = TextEditingController();
  late PasswordProvider _passwordProvider;

  @override
  Widget build(BuildContext context) {
    _passwordProvider = context.watch<PasswordProvider>();
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
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                            color: Color(0xfffffffffffffff),
                            fontSize: 35,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 25),
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: hidePassword,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: _passwordProvider.hidePass,
                            decoration: InputDecoration(
                              hintText: 'Enter Current Password',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordProvider.hidePass
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  _passwordProvider.currentPass();
                                },
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            validator: (val) {
                              if (val.toString().isEmpty)
                                return 'Please Enter your Password';
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: hidePassword1,
                            obscureText: _passwordProvider.hidePass1,
                            decoration: InputDecoration(
                                hintText: 'Enter New Password',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordProvider.hidePass1
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    _passwordProvider.newPass();
                                  },
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            validator: (val) {
                              if (val.toString().isEmpty)
                                return '*Please Enter your Password';
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "* Confirm your Password";
                              } else if (value.length < 6) {
                                return "Password should be atleast 6 characters";
                              } else
                                return null;
                            },
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          GestureDetector(
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
                                    "Save",
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
