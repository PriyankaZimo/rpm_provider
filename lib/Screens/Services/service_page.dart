import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Services/components/add_service.dart';

import 'components/service_details.dart';

class ServicePage extends StatelessWidget {
  List text = ['Hair Service', 'Nail Service'];
  List serv = ['Blow Dry', 'Manicures'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        centerTitle: true,
        title: Text(
          'Services',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFCCBC),
                  blurRadius: 3,
                ),
              ]),
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabled: true,
                  border: InputBorder.none,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: text.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceDetails()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        margin: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xFFFFCCBC),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  serv[index],
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text('\$20')
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddService()));
        },
        backgroundColor: Colors.orange[700],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), //
    );
  }
}
