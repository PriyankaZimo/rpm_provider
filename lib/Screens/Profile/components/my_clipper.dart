import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    //Height
    path.lineTo(0, size.height);
    //path.lineTo(size.width, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 70, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
