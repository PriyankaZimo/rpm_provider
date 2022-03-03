import 'package:flutter/material.dart';

class EnterPin extends StatelessWidget {
  const EnterPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'Enter PIN',
                  style: TextStyle(
                      color: Colors.redAccent[100],
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              height: 535,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFf06771), Color(0xFFf5A57C)]),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      'Type 4 digit PIN to Login',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Color(0xFFEF5765),
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
