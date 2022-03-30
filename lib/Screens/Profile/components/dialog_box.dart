import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dropdown_page.dart';

class AlertDialogBox extends StatelessWidget {
  var tabController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      /// Title
      title: Container(
        width: MediaQuery.of(context).size.width,
      ),

      /// Content
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Address 2',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            DropDownPage(onSelected: (val) {
              tabController.text = val;
            }),
            Container(
              height: 30,
              child: TextFormField(
                decoration:  InputDecoration(
                    hintText: "Branch",
                    hintStyle: TextStyle(color: Colors.black54),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12))),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Building",
                  hintStyle: TextStyle(color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Street",
                  hintStyle: TextStyle(color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('City',
                      style: TextStyle(fontSize: 16, color: Colors.black54)),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12))),
                  validator: (val) {},
                )),
                SizedBox(
                  width: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'State',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12))),
                )),
              ],
            ),
            TextFormField(
              maxLength: 6,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  counterText: "",
                  hintText: "ZipCode",
                  hintStyle: TextStyle(color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
              validator: (val) {
                if (val.toString().isEmpty) return ('Please Enter ZipCode');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 40,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffF47D3A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
