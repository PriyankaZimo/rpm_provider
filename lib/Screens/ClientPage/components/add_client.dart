import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class AddClient extends StatelessWidget {
  const AddClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(

        centerTitle: true,
        leading: const BackButton(color: Colors.black,),
        elevation: 0,
        title: Text(
          'Add Client',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    hintText:"",
                    labelText: 'First Name',
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
                padding: EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    hintText: "",
                    labelText: 'Last Name',
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
                padding:EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 10, minWidth: 50),
                    hintText: "",
                    labelText: 'Email',
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
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      textStyle: TextStyle(color: Colors.black45),
                      /*initialSelection: 'IN',*/
                      showCountryOnly: false,
                    ),
                    hintText: "",
                    labelText: 'Mobile Number',
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
              Container(
                  margin: EdgeInsets.only(top: 60),
                  height: 50,
                  width: 220,decoration: BoxDecoration(
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                      ),
                      child: Text('Save',style: TextStyle(fontSize: 20),
                      ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
