import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/ClientPage/components/add_client.dart';

class ClientPage extends StatelessWidget {
  List text = [
    'Jane Copper',
    'Marvin McKinney',
    'Jane Cooper',
    'Marvin McKinney',
    'Jane Cooper',
    'Marvin McKinney'
  ];

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
          'Client',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color(0xFFFFCCBC),
                      blurRadius: 3,
                      offset: Offset(1, 2)),
                ]),
                height: 50,
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    enabled: true,
                    border: InputBorder.none,
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Color(0xFFFFCCBC))),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AddClient()));},
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 20,
        ),
        backgroundColor: Color(0xffF37F6c),
      ),
    );
  }
}
