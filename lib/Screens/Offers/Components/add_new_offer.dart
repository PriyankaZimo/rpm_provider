import 'package:flutter/material.dart';

class Add_offers extends StatefulWidget {
  @override
  State<Add_offers> createState() => _Add_offersState();
}

var val;

class _Add_offersState extends State<Add_offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 24.0,
        ),
        centerTitle: true,
        title: Text(
          'Add New Offers',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIconConstraints:
                      BoxConstraints(minHeight: 10, minWidth: 50),
                  /*hintText: "Enter a Mobile No",*/
                  labelText: 'Offer Title',
                  hintStyle:
                      TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                  fillColor: Color(0xffe5e5e5),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    /*               hintText: "Enter an Email",*/
                    labelText: 'Percentage of Offer',
                    hintStyle:
                        TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                    fillColor: Color(0xffe5e5e5),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    /*hintText: "Enter your Contact No",*/
                    labelText: 'Price',
                    hintStyle:
                        TextStyle(fontSize: 20.0, color: Color(0xffB9B9B9)),
                    fillColor: Color(0xffe5e5e5),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    /*hintText: "Enter your Contact No",*/
                    labelText: 'Description',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    fillColor: Color(0xffe5e5e5),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Color(0xffB9B9B9)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Offer Valid'),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'from',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          /*hintText: "Enter your Contact No",*/
                          /*        labelText: 'Description',*/
                          hintStyle:
                              TextStyle(fontSize: 20.0, color: Colors.black),
                          fillColor: Color(0xffe5e5e5),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xffB9B9B9)),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'To',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          /*hintText: "Enter your Contact No",*/
                          /*        labelText: 'Description',*/
                          hintStyle:
                              TextStyle(fontSize: 20.0, color: Colors.black),
                          fillColor: Color(0xffe5e5e5),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xffB9B9B9)),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
