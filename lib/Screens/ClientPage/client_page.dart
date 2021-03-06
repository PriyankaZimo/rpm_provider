// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/ClientPage/components/add_client.dart';

import 'components/add_client.dart';

class ClientPage extends StatefulWidget {
  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Client',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color(0xFFFFCCBC),
                  blurRadius: 3,
                ),
              ]),
              height: 50,
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

          ///LIST VIEW
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return Dismissible(
                  direction: items.length > 1
                      ? DismissDirection.endToStart
                      : DismissDirection.none,
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });

                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(' Deleted')));
                  },
                  background: Container(
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.delete_forever,
                        color: Colors.red,
                        size: 36.0,
                      ),
                    ),
                  ),
                  child: Container(
                    margin:
                        EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(color: Color(0xffF47D3A), blurRadius: 1)
                      ],
                    ),
                    child: Stack(
                      children: [
                        ListTile(
                          title: Text(
                            " Thomas AndrewShelby",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/pediaofinterest/images/2/26/MV5BMTQxODMxMjAzNl5BMl5BanBnXkFtZTcwMTczODc3OQ%40%40._V1_SY317_CR33%2C0%2C214%2C317_.jpg/revision/latest/scale-to-width-down/290?cb=20131011202426'),
                            maxRadius: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 2,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddClient()));

        },
        backgroundColor: Color(0xffF47D3A),
        child: Icon(Icons.add),
      ),
    );
  }
}
