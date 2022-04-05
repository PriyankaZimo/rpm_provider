import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Screens/Availability/Components/avail_dropdown.dart';
import 'package:rpm_provider/Screens/Availability/Provider/availability_provider.dart';
import 'package:rpm_provider/Screens/Offers/Components/add_new_offer.dart';
import 'package:rpm_provider/Util/constants.dart';

class AvailabilityPage extends StatelessWidget {
  late AvailabilityProvider availabilityProvider;

  @override
  Widget build(BuildContext context) {
    availabilityProvider = context.read<AvailabilityProvider>();

    return Consumer<AvailabilityProvider>(
      builder: (BuildContext context, value, Widget? child) => Column(
        children: [
          SizedBox(
            height: 20,
          ),
          value.sel == true
              ? Container(
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
                        'Chandigarh',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF57C00)),
                      ),
                      IconButton(
                          onPressed: () {
                            value.selectButton(false);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          )),
                    ],
                  ),
                )
              : Column(
                  children: [

                    Container(
                      height:60 ,
                        padding: EdgeInsets.only(left: 20),
                        margin: EdgeInsets.only(left: 20, right: 20),
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
                              'Chandigarh',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF57C00)),
                            ),
                            IconButton(
                                onPressed: () {
                                  value.selectButton(true);
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 30,
                                )),
                          ],
                        )),
                    AvailDropDown()
                  ],
                ),
        ],
      ),
    );
  }
}
