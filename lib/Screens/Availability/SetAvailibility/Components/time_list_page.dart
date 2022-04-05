import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Screens/Availability/Provider/setavail_provider.dart';

class TimeList extends StatelessWidget {
  var dateController = TextEditingController();
  late SetAvailProvider setAvailProvider;
  late GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    setAvailProvider = context.read<SetAvailProvider>();
    return Expanded(
        child: Consumer<SetAvailProvider>(
      builder: (context, value, child) => ListView.builder(

          itemCount: setAvailProvider.time.length,
          itemBuilder: (context, index) => value.time[index]['select']
              ?

              /// Switch ON
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            value.time[index]['txt'],
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Switch(
                              activeColor: Color(0xFFF57C00),
                              value: value.time[index]["select"],
                              onChanged: (val) {
                                value.selectButton(index, false);
                              }),
                        ],
                      ),
                      /// 1st row
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            itemCount:1,
                            itemBuilder: (context, index) => Container(
                                  height: 100,
                                  width: 20,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('From:',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          IconButton(
                                              onPressed: () {
                                                selectDate(context);
                                              },
                                              icon: Icon(
                                                Icons.calendar_today,
                                                color: Colors.grey,
                                                size: 20,
                                              )),
                                          Text('To',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                              onPressed: () {

                                              },
                                              icon: Icon(
                                                Icons.calendar_today,
                                                color: Colors.grey,
                                                size: 20,
                                              )),
                                          /// Add Icon
                                          IconButton(
                                              onPressed: ()
                                              {

                                              },
                                              icon: Icon(
                                                Icons.add_circle,
                                                color: Colors.deepOrangeAccent,
                                                size: 25,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('09:00'),
                                          Text('09:00'),
                                          SizedBox(),
                                          SizedBox(),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                )),
                      )

                      /// 2nd row
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text('From:', style: TextStyle(color: Colors.grey)),
                      //     IconButton(
                      //         onPressed: () {
                      //           selectDate(context);
                      //         },
                      //         icon: Icon(
                      //           Icons.calendar_today,
                      //           color: Colors.grey,
                      //           size: 20,
                      //         )),
                      //     Text('To:', style: TextStyle(color: Colors.grey)),
                      //     SizedBox(
                      //       width: 20,
                      //     ),
                      //     IconButton(
                      //         onPressed: () {
                      //           selectDate(context);
                      //         },
                      //         icon: Icon(
                      //           Icons.calendar_today,
                      //           color: Colors.grey,
                      //           size: 20,
                      //         )),
                      //     IconButton(
                      //         onPressed: () {},
                      //         icon: Icon(
                      //           Icons.cancel_outlined,
                      //           color: Colors.red,
                      //           size: 25,
                      //         ))
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text('09:00'),
                      //     Text('09:00'),
                      //     SizedBox(),
                      //     SizedBox(),
                      //   ],
                      // ),
                    ],
                  ))
              :

              /// Switch OFF
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Row(
                    children: [
                      Text(
                        value.time[index]['txt'],
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),

                      /// Switch
                      Spacer(),
                      Switch(
                          activeColor: Color(0xFFF57C00),
                          value: value.time[index]["select"],
                          onChanged: (val) {
                            print(value);
                            value.selectButton(index, true);
                          }),
                    ],
                  ))),
    ));
  }

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
