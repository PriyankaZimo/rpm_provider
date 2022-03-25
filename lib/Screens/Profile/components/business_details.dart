import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.deepOrangeAccent.withOpacity(0.2))),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('BusinessName'),
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
                Row(
                  children: [
                    Text(
                      'Salon',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('About the Company',style: TextStyle(fontSize: 16),),
                Text('Lorem ipsum dolor sit amet,consectetur'),
                SizedBox(
                  height: 20,
                ),
                /// Address
                Container(
                  height: 30,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: addressController,
                    decoration: InputDecoration(
                        hintText: "Address",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Icon(
                            Icons.border_color_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                    validator: (val) {
                      if (val.toString().isEmpty) return "*Enter your address";
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ///Select Country
                Row(
                  children: [
                    Text(
                      'Select Country',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  child: TextFormField(
                    controller: countryController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        hintText: "Flat,House No.Apartement",
                        hintStyle:
                            TextStyle(color: Colors.black12, fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                    validator: (val) {
                      if (val.toString().isEmpty) return "*Select Country";
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                /// Sector
                Container(
                  height: 30,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: sectorController,
                    decoration: InputDecoration(
                        hintText: "Sector,Street",
                        hintStyle:
                            TextStyle(color: Colors.black12, fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                    validator: (val) {
                      if (val.toString().isEmpty) return "*Select your Street";
                    },
                  ),
                ),

                Row(
                  children: [
                    Text(
                      'City',
                      style: TextStyle(color: Colors.black12),
                    ),
                    Expanded(
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: cityController,
                        decoration: InputDecoration(
                            hintText: "",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 16),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12))),
                        validator: (val) {
                          if (val.toString().isEmpty) return "*Enter your city";
                        },
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'State',
                      style: TextStyle(color: Colors.black12),
                    ),
                    Expanded(
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: stateController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12))),
                        validator: (val) {
                          if (val.toString().isEmpty)
                            return "*Enter your state";
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  child: TextFormField(
                    maxLength: 6,
                    controller: zipController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: "ZipCode",
                        hintStyle:
                            TextStyle(color: Colors.black12, fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                    validator: (val) {
                      if (val.toString().isEmpty)
                        return "*Enter your ZipCode";
                      // else if(val.toString().length<6)
                      //   return "*Enter length max 6 ";
                      else if (val!.isEmpty ||
                          RegExp("[a-z/A-Z/@]").hasMatch(val)) {
                        return '* Enter correct ZipCode';
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 340),
            height: 50,
            width: 330,decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 3,
                offset: Offset(0, 3),
              ),]),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF47D3A),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),

                  ),
                ),
                child: Text('Save',style: TextStyle(fontSize: 20),))),
      ],
    );
  }
}
