import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Availability/Provider/availability_provider.dart';
import 'package:rpm_provider/Util/constants.dart';

class AvailDropDown extends StatelessWidget {
  late AvailabilityProvider availabilityProvider;

  @override
  Widget build(BuildContext context) {
    availabilityProvider = context.watch<AvailabilityProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Mar 24,2022-Mar 30,2022',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Container(
                    height: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.deepOrange.shade100,
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          availabilityProvider.avail[index]['txt'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('-Empty-'),
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
