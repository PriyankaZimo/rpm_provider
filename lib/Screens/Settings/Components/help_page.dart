import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

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
            'Help & Support',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.all(10),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xFFFFCCBC))),
                        child: Row(
                          children: [
                            Text('data',style: TextStyle(fontSize: 20),),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: 20,))
                          ],
                        ),
                      )),
            ),
          ],
        ));
  }
}
