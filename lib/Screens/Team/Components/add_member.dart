import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:rpm_provider/Screens/Team/Provider/add_provider.dart';

class AddMembers extends StatelessWidget {
  late AddProvider _addProvider;
  List text = ['Profile', 'Availability'];

  @override
  Widget build(BuildContext context) {
    _addProvider = context.watch<AddProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Add member',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        _addProvider.selectTab(index);
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _addProvider.select == index
                                ? Colors.orange[700]
                                : Colors.white,
                            border: Border.all(color: Colors.orange)),
                        child: Center(
                            child: Text(
                          text[index],
                          style: TextStyle(
                              color: _addProvider.select == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )),
          ),
          _addProvider.selectContent()
        ],
      ),
    );
  }
}
