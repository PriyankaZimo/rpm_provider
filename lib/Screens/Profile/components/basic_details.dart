import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Profile/components/scanqr_page.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text(
          "JaneCopper",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.deepOrangeAccent.withOpacity(0.2))),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('FirstName'),
                    Spacer(),
                    Icon(Icons.border_color_outlined)
                  ],
                ),
                Text(
                  'Jane',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('LastName'),
                SizedBox(
                  height: 10,
                ),
                Text('Cooper', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Text('Email'),
                SizedBox(
                  height: 10,
                ),
                Text('jaincooper12@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Text('MobileNumber'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('India(+91)|8976-8765',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(Icons.call_outlined)
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScanQrPage()));
          },
          child: Container(
              child: Image.asset(
            'assets//qrcode.png',
            height: 60,
          )),
        ),
        Text('Scan QR',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
