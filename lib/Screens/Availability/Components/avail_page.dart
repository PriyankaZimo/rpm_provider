// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class AvailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFFFFCCBC),
                    blurRadius: 3,
                    offset: Offset(1, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'lvy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
