import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/CommonWidget/circles_color.dart';
import 'package:rpm_provider/Screens/Verify_otp/components/verify_otp_box.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CircleColor(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                      color: Color(0xFFEF5750),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 50,),
           VerifyOtpBox()
          ],
        ),
      ),
    );
  }
}
