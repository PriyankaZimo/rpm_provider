import 'package:flutter/material.dart';
import 'package:rpm_provider/Util/constants.dart';

class HelpPage extends StatelessWidget {
List icn=[Icon(Icons.message),Icon(Icons.call_outlined)];

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
            'Help & Support',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.only(left: 20),
                        margin: EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xFFFFCCBC))),
                        child: Row(
                          children: [
                         Icon(text[index]['icon'],color: Colors.black,size: 20,),
                            SizedBox(width: 10,),
                            Text(
                              text[index]['txt'],
                              style: TextStyle(fontSize: 20),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 20,
                                ))
                          ],
                        ),
                      )),
            ),
          ],
        ));
  }
}
