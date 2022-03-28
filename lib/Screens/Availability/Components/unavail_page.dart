import 'package:flutter/material.dart';

class UnAvailability extends StatelessWidget {
  const UnAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
       Text('Unavailability')
      ],
    );
  }
}
