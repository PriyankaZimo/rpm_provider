import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProfile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange)
          ),
        )
      ],
    );
  }
}
