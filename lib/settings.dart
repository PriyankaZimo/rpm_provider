import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 24.0,
        ),
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only( top: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Appointment Booking",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20.0,

                    ),
                  ],
                ),
              ),
            ),Container(
              margin: EdgeInsets.only( top: 10 ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cancellation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20.0,

                    ),
                  ],
                ),
              ),
            ),Container(
              margin: EdgeInsets.only( top: 10 ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rescheduling",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20.0,

                    ),
                  ],
                ),
              ),
            ),Container(
              margin: EdgeInsets.only(top: 10 ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Refund Policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20.0,

                    ),
                  ],
                ),
              ),
            ),Container(
              margin: EdgeInsets.only( top: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Change Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20.0,

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
