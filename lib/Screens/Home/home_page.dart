import 'package:flutter/material.dart';

import '../../notification.dart';
import 'Component/drawer_page.dart';

class HomePage extends StatelessWidget {
  var scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffKey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            scaffKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.segment,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Icon(
                Icons.notifications_outlined,
                size: 35,
                color: Colors.black,
              )),
        ],
      ),
      drawer:
      DrawerPage(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
