import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Enterpin/enter_pin_page.dart';
import 'package:rpm_provider/Screens/Verify_otp/verify_otp_page.dart';

class SignInPage extends StatelessWidget {
  TextEditingController numberController =TextEditingController();
  GlobalKey<FormState> formKey =GlobalKey();
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
            key:formKey ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 35),
                  child: Row(
                    children: [
                      CountryCodePicker(
                        textStyle: TextStyle(color: Colors.white),
                        initialSelection: 'IN',
                        showCountryOnly: false,
                      ),
                      Container(
                        height: 25,
                        width: 1,
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.white,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller:numberController ,
                          style: TextStyle(color: Colors.white),
                          maxLength: 10,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: "",
                              suffixIcon: Icon(
                                Icons.call_outlined,
                                color: Colors.white,
                              ),
                              border: InputBorder.none),
                          // validator: (val) {
                          //   if (val!.isEmpty || RegExp("[a-z/A-Z]").hasMatch(val)) {
                          //     return 'Enter correct num';
                          //   }
                          //
                          // },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40
                  ),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.white,
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
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Forgot PIN?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
