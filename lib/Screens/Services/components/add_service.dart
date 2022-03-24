import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Services/components/service_details.dart';

class AddService extends StatelessWidget {
  const AddService({Key? key}) : super(key: key);

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
          'Add Services',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Service Name',
                style: TextStyle(fontSize: 19),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Services',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12))),
                validator: (val) {
                  if (val.toString().isEmpty)
                    return ('Please Enter your Service');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Description',
                style: TextStyle(fontSize: 19),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Lorem',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Duration',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Price',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('Fixed'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('Variables'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                  ))
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
