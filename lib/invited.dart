import 'package:flutter/material.dart';

class Invited extends StatelessWidget {
  const Invited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {

            },
            child: Text("Show alert Dialog box"),
          ),
        ),

    );
  }
}