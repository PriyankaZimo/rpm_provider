// import 'package:flutter/material.dart';
//
// class TeamPage extends StatelessWidget {
//   const TeamPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: BackButton(
//           color: Colors.black,
//         ),
//         title: Text(
//           'Team',
//           style: TextStyle(color: Colors.black, fontSize: 25),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//               margin: EdgeInsets.only(left: 10, right: 10),
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                   color: Color(0xFFFFCCBC),
//                   blurRadius: 3,
//                 ),
//               ]),
//               height: 50,
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   hintText: 'Search...',
//                   hintStyle: TextStyle(color: Colors.grey),
//                   suffixIcon: Icon(
//                     Icons.search,
//                     size: 30,
//                     color: Colors.grey,
//                   ),
//                   fillColor: Colors.white,
//                   filled: true,
//                   enabled: true,
//                   border: InputBorder.none,
//                 ),
//               )),
//           Expanded(
//             child: ListView.builder(
//                 itemCount: 20,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) => Container(
//                       margin: EdgeInsets.all(10),
//                       height: 80,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(50),
//                           border: Border.all(color: Colors.orange)),
//                       child: Row(
//                         children: [
//                           Container(
//                             clipBehavior: Clip.antiAlias,
//                             margin: EdgeInsets.only(left: 30),
//                             height: 60,
//                             width: 60,
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle, color: Colors.red),
//                             child: Image.network(
//                               'https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//                               fit: BoxFit.fill,
//                             ),
//                           )
//                         ],
//                       ),
//                     )),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.orange[700],
//         onPressed: () {},
//         child: Icon(
//           Icons.add,
//           color: Colors.black,
//         ),
//       ),
//     );
//   }
// }
