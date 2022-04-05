import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Availability/SetAvailibility/Components/set_dropdown_page.dart';
import 'package:rpm_provider/Screens/Availability/SetAvailibility/Components/time_list_page.dart';

class SetAvailability extends StatelessWidget {
  var tabController = TextEditingController();
  var dateController = TextEditingController();
  var startController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

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
          'SetAvailability',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const Text(
              'Available Days',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400)),
              child: Column(
                children: [
                  /// Select Branch / TimeZone
                  Row(
                    children: [
                      Expanded(
                        child: SetDropDown(
                          onSelect: (val) {
                            tabController.text = val;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectTime(context);
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Select time zone',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  /// from Date/To Date
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'From Date:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              IconButton(
                                  onPressed: () {
                                    selectDate(context);
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'To Date:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              IconButton(
                                  onPressed: () {
                                    selectDate(context);
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Listview
            TimeList()
          ],
        ),
      ),
    );
  }

  /// Timer

  selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime:
          TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
    );
    if (picked != null) {
      DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, picked.hour, picked.minute);
      // startController.text = DateFormat("HH:mm").format(dateTime);
    }
  }

  // endTime(BuildContext context) async {
  //   final TimeOfDay? picked = await showTimePicker(
  //     context: context,
  //     initialTime:
  //     TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
  //   );
  //   if (picked != null) {
  //     DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
  //         DateTime.now().day, picked.hour, picked.minute);
  //     endController.text = DateFormat("HH:mm").format(dateTime);
  //   }
  // }
  /// Calender
  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      DateTime day = DateTime(picked.year, picked.month, picked.day);
      // dateController.text = DateFormat("yyyy-MM-dd").format(day);
    }
  }
}
