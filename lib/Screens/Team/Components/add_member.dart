// import 'package:flutter/material.dart';
// import 'package:provider/src/provider.dart';
// import 'package:rpm_provider/Screens/Team/Provider/add_provider.dart';
//
// class AddMembers extends StatelessWidget {
//   late AddProvider _addProvider;
//   List text = ['Profile', 'Availability'];
//
//   @override
//   Widget build(BuildContext context) {
//     _addProvider = context.watch<AddProvider>();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: BackButton(
//           color: Colors.black,
//         ),
//         title: Text(
//           'Add member',
//           style: TextStyle(color: Colors.black, fontSize: 25),
//         ),
//       ),
//       body: Column(
//
//         children: [
//           Center(
//             child: Container(
//               padding: EdgeInsets.only(left: 3),
//               height: 60,
//               width: 320,
//               child: ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                   itemCount: 2,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) => GestureDetector(
//                         onTap: () {
//                           _addProvider.selectTab(index);
//                         },
//                         child: Container(
//
//                           margin: EdgeInsets.all(10),
//                           width: 120,
//                           decoration: BoxDecoration(
//                             boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(3,3),blurRadius: 3)],
//                               borderRadius: BorderRadius.circular(5),
//                               color: _addProvider.select == index
//                                   ? Colors.orange[700]
//                                   : Colors.white,
//                               border: Border.all(color: Colors.orange)),
//                           child: Center(
//                               child: Text(
//                             text[index],
//                             style: TextStyle(
//                                 color: _addProvider.select == index
//                                     ? Colors.white
//                                     : Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                         ),
//                       )),
//             ),
//           ),
//           _addProvider.selectContent()
//         ],
//       ),
//     );
//   }
// }
