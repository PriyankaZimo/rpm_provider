import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Availability/Provider/availability_provider.dart';
import 'package:rpm_provider/Screens/Availability/SetAvailibility/Components/set_availability.dart';

class AvailabilityHome extends StatelessWidget {
  late AvailabilityProvider availabilityProvider;

  AvailabilityHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    availabilityProvider = context.watch<AvailabilityProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'Availability',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SetAvailability()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Set Availability',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    availabilityProvider.selectTab(0);
                  },
                  child: Container(
                    height:40,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: availabilityProvider.select == 0
                            ? Color(0xFFF57C00)
                            : Colors.transparent),
                    child: Center(
                        child: Text(
                      'Availability',
                      style: TextStyle(
                          color: availabilityProvider.select == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    availabilityProvider.selectTab(1);
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: availabilityProvider.select == 1
                          ? Color(0xFFF57C00)
                          : Colors.transparent,
                    ),
                    child: Center(
                        child: Text('Unavailability',
                            style: TextStyle(
                                color: availabilityProvider.select == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18))),
                  ),
                )
              ],
            ),
            availabilityProvider.selectContain()

            /// Cupertino Switch
            // CupertinoSwitch(activeColor: Colors.green,
            //     trackColor: CupertinoColors.systemBlue,
            //     value:true, onChanged: (val){
            //
            // })
          ],
        ),
      ),
    );
  }
}
