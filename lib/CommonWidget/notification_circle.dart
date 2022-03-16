import 'package:flutter/material.dart';

class NotificationCircle extends StatelessWidget {
  const NotificationCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: -20,
          right: -55,
          child: Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(200))),
          ),
        ),
        Positioned(
          bottom: -100,
          right: -60,
          child: Container(
            height: 250,
            width: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(170),
                  topRight: Radius.circular(100)),
              color: Colors.redAccent[100],
            ),
          ),
        ),
        Positioned(
          bottom: -70,
          right: -40,
          child: Container(
              height: 200,
              width: 200,
              // margin: EdgeInsets.only(right: 300),
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2.0, color: Colors.white.withOpacity(0.5)),
              )),
        ),
        Positioned(
          bottom: -90,
          right: -40,
          child: Container(
            height: 200,
            width: 200,
            // margin: EdgeInsets.only(right: 300),
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border:
                  Border.all(width: 2.0, color: Colors.white.withOpacity(0.5)),
            ),
          ),
        ),
      ],
    );
  }
}
