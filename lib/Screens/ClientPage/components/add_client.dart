
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddClient extends StatelessWidget {
  const AddClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        leading: BackButton(color: Colors.black,),
      ),body: Container(
      margin: EdgeInsets.all(10),
        child: Column(
        children: [
          TextFormField(decoration: InputDecoration(
            border: UnderlineInputBorder(
              
            )
          ),)
        ],
    ),
      ),
    );
  }
}
