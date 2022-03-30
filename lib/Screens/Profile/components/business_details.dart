import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Profile/components/dialog_box.dart';

class BusinessDetail extends StatelessWidget {
  var addressController = TextEditingController();
  var countryController = TextEditingController();
  var sectorController = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
        ),

        /// Content Container
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Colors.deepOrangeAccent.withOpacity(0.4))),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'BusinessName',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Cooper',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Category'),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Salon',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'About the Company',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lorem ipsum dolor sit amet,consectetur\nelit sed do eiusmod tempor incididunt\nut labore et dolore m',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 30,
                ),

                /// Address
                Text(
                  'Address1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Chd',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                ),
                Text('SCO 25,',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                Text('Sector 8',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                Text('Chandigarh',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                Text('160008',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),

                /// Dialog Box
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialogBox());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 17,
                      ),
                      Text(
                        'Add location',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        /// Elevated Button
        SizedBox(
          height: 70,
        ),
        Container(
            height: 50,
            width: 330,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ]),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF47D3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20),
                ))),
      ],
    );
  }
}
