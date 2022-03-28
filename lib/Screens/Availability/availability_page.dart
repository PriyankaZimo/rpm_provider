import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Availability/Provider/availability_provider.dart';

class AvailabilityPage extends StatelessWidget {
  late AvailabilityProvider availabilityProvider;

  AvailabilityPage({Key? key}) : super(key: key);

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              'Set Availability',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  availabilityProvider.selectTab(0);
                },
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
        ],
      ),
    );
  }
}
