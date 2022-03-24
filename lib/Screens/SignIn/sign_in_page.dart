import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Enterpin/enter_pin_page.dart';
import 'package:rpm_provider/Screens/Verify_otp/verify_otp_page.dart';

class SignInPage extends StatelessWidget {
  TextEditingController numberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 250,
                ),
             Text(
                  'Sign In',
                  style:  TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: 80,
                ),
                Padding(
                  padding:  EdgeInsets.all(30.0),
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style:  TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      counterText: "",
                      prefixIcon: CountryCodePicker(
                        textStyle:  TextStyle(color: Colors.white),
                        initialSelection: 'IN',
                        showCountryOnly: false,
                      ),
                      suffixIcon:  Icon(
                        Icons.call_outlined,
                        color: Colors.white,
                      ),
                      enabledBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintStyle:  TextStyle(color: Colors.white),
                    ),
                    validator: (val) {
                      if (val.toString().isEmpty) {
                        return "* Please Enter your number";
                      } else if (val!.isEmpty ||
                          RegExp("[a-z/A-Z/@]").hasMatch(val)) {
                        return '* Enter correct number';
                      }
                    },
                  ),
                ),
                 SizedBox(height: 100),
                GestureDetector(
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
                 SizedBox(
                  height: 50,
                ),
                 Text(
                  'OR',
                  style:  TextStyle(color: Colors.white, fontSize: 20),
                ),
                 SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyOtpPage()));
                  },
                  child:  Padding(
                    padding:  EdgeInsets.only(top: 30),
                    child: Text(
                      'Forgot PIN?',
                      style:  TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
