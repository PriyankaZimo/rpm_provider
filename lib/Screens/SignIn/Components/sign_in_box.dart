import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Enterpin/enter_pin_page.dart';

class SignInBox extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.7,

      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFEF5765), Color(0xFFFFE0B2)]),
          borderRadius:
          BorderRadius.only(topLeft: Radius.circular(100))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 30, right: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'India (+91)',
                  suffixIcon: Icon(
                    Icons.call_outlined,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(color: Colors.white),

                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EnterPin()));
            },
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                    'Enter Pin',
                    style: TextStyle(
                        color: Color(0xFFEF5765),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

