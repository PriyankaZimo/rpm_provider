import 'package:flutter/material.dart';
import 'package:rpm_provider/CommonWidget/circles_color.dart';
import 'package:rpm_provider/Screens/SignIn/Components/sign_in_box.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleColor(),
            Center(
              child: Padding(

                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.redAccent[100],
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SignInBox()
          ],
        ),
      ),
    );
  }
}
