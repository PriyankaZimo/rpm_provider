import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/SignIn/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage(context);
    return Scaffold(
      /*backgroundColor: Color(0xff454553),*/
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
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/logo5.png',
              scale: 2,
            ),
          ),
          Positioned(
            top: -350,
            bottom: -200,
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 15),
              tween: Tween(begin: 100.0, end: 400.0),
              curve: Curves.bounceIn,
              builder: (BuildContext context, double value, Widget? child) {
                return Container(
                  height: value,
                  width: value,
                  child: Image.asset(
                    'assets/logo1.png',
                    scale: 6,
                  ),
                );
              },
            ),
          ),
          Positioned(

bottom: 130,top:220,
              child: Center(
                child: Text(
                  'Iskedo',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 50),
                ),
              ))
        ]),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Future.delayed(Duration(seconds: 6), () {
      /*Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInPage()));*/
    });
  }
}
