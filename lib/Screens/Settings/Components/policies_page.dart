import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Util/constants.dart';

class PoliciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Policies',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xFFFFCCBC))),
                        child: Row(
                          children: [
                            Text(
                              tex[index]['txt'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                ))
                          ],
                        ),
                      )))
        ],
      ),
    );
  }
}
