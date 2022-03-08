import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Enterpin/enter_pin_page.dart';
import 'package:rpm_provider/Screens/Verify_otp/verify_otp_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF1F3),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFee3d7e).withOpacity(0.8),
                Color(0xFFf99d1c).withOpacity(0.9),
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
                  'Sign In',
                  style: TextStyle(
                      color: Color(0xfffffffffffffff),
                      fontSize: 60,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, right: 10),
                child: Row(
                  children: [
                    CountryCodePicker(
                      textStyle: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 25,
                      width: 1,
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.white,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            counterText: "",
                            suffixIcon: Icon(
                              Icons.call_outlined,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                        // validator: (val) {
                        //   if (val.toString().isEmpty) {
                        //     return 'Enter number';
                        //   } else if (val.toString().length < 10) {
                        //     return "Enter max 10 digits";
                        //   }
                        // },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(height: 80),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EnterPin()));
                  },
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      'Enter Pin',
                      style: TextStyle(
                          color: Color(0xFFEF5765),
                          fontSize: 25,
                          fontWeight: FontWeight.normal),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'OR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerifyOtpPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'forget PIN?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
