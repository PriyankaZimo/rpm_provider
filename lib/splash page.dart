import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/SignIn/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool Ani = false;

  @override
  void initState() {
    // TODO: implement initState
    nextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -200,
              bottom: -200,
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 4),
                tween: Tween(begin: 100.0, end: 3000.0),
                curve: Curves.bounceOut,
                builder: (BuildContext context, double value, Widget? child) {
                  return Container(
                    height: value,
                    width: value,
                    child: Image.asset(
                      'assets/logo.png',
                      height: 100,
                      width: 100,
                    ),
                  );
                },
              ),
            ),
            Image.asset(
              'assets/logo1.png',
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInPage()));
    });
  }
}
