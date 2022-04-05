import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Services/components/add_service.dart';
import 'package:rpm_provider/Screens/Services/components/service_details.dart';

class ServicePage extends StatelessWidget {
  final items = ['', '', '', '', '', '', '', '', '', ''];

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
                keyboardType: TextInputType.text,
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
                  border: InputBorder.none,
                ),
              )),
          SizedBox(
            height: 10,
          ),

          /// List View
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ServiceDetails()));
              },
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return Dismissible(
                    direction: items.length > 1
                        ? DismissDirection.endToStart
                        : DismissDirection.none,
                    key: Key(item),
                    onDismissed: (direction) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(' Deleted')));
                    },
                    background: Container(
                      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                          size: 36.0,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)
                        ],
                      ),
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hair Services',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Blow Dry',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Text('20\$')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),

      /// Float Button
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
