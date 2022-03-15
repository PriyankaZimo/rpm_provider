import 'package:flutter/material.dart';

class Role extends StatefulWidget {
  const Role({Key? key}) : super(key: key);

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
  bool _Button1 = false;bool _Button2 = false;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
              ),
              Text(
                'Iskeedo',textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),

              GestureDetector(
                onTap: () { setState(() {
                  // Toggle light when tapped.
                  _Button1 = !_Button1;
                });},
                child: Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                      color: _Button1 ? Colors.white70 : Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Admin',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  )),
                ),
              ),SizedBox(height: 50,),
              GestureDetector(
                onTap: () {setState(() {
                  // Toggle light when tapped.
                  _Button2 = !_Button2;
                });print('hlo i am clicked');},
                child: Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                      color: _Button2 ? Colors.white70 : Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Staff',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
