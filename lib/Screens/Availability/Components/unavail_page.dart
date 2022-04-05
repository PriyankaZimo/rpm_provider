import 'package:flutter/material.dart';

class UnAvailability extends StatelessWidget {
  const UnAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.deepOrange.shade200)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Sunday'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('start:09:30PM'),
                            Text('end:11:30PM')
                          ],
                        )
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
