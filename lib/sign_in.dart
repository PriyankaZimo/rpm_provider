import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 280,
            width: 280,

            /* margin: EdgeInsets.only(right: 400),*/
            decoration: BoxDecoration(
                color: Colors.transparent, shape: BoxShape.circle),
          ),
          Positioned(
            top: -50,
            left: -55,
            child: Container(
              height: 270,
              width: 270,

              /* margin: EdgeInsets.only(right: 400),*/
              decoration: BoxDecoration(
                  color: Color(0xfff58FA9), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: -35,
            left: -70,
            child: Container(
              height: 220,
              width: 220,
              margin: EdgeInsets.only(right: 300),
              decoration: BoxDecoration(
                  color: Color(0xffF37F6c), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: -20,
            left: -30,
            child: Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(right: 300),
              decoration: BoxDecoration(
                  color: Color(0xffF06064), shape: BoxShape.circle),

            ),
          ),
          Positioned(
            top: -5,
            left: -50,
            child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(right: 300),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2.0, color: Colors.white.withOpacity(0.5)),
                )),
          ),
          Positioned(
            top: -25,
            left: -60,
            child: Container(
                height: 200,
                width: 220,
                margin: EdgeInsets.only(right: 300),

                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2.0, color: Colors.white.withOpacity(0.5)),
                )),
          ),
        ],
      ),
    );
  }
}
