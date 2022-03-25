import 'package:flutter/material.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

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
          'Currency',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          Spacer(),
          Center(
            child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFF57C00)),
                )),
          )
        ],
      ),
    );
  }
}
