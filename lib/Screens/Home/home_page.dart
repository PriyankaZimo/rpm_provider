import 'package:flutter/material.dart';
import 'package:rpm_provider/notification.dart';

import 'Component/drawer.dart';

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
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              )),
        ],
      ),

      ///Drawer Class
      drawer: DrawerPage(),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
