import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Screens/Home/Provider/drawer_provider.dart';
import 'package:rpm_provider/Util/constants.dart';

class DrawerPage extends StatelessWidget {
  late DrawerProvider _drawerProvider;
  @override
  Widget build(BuildContext context) {
    _drawerProvider=context.read<DrawerProvider>();
    return Container(
      width: 270,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: Text(
              'ISKEEDO',
              style: TextStyle(color: Colors.orange[700], fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Color(0xFFFFCCBC),
              thickness: 1,
            ),
          ),
          /// List View
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: tex.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Consumer<DrawerProvider>(
                  builder: (context, val,child)=>
                  Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            GestureDetector(onTap: (){
                              val.selText(index, context);
                            },
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imag[index]),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(2, 2),
                                              blurRadius: 2)
                                        ],
                                        border: Border.all(
                                            color: Colors.redAccent, width: 3)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),

                                  /// List Text
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      tex[index],
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                )),
          )
          // Consumer<DrawerProvider>(
          //   builder: (context, val, child) => Container(
          //     padding: EdgeInsets.only(
          //       left: 10,
          //       right: 10,
          //     ),
          //     child: Expanded(
          //       child: ListView.builder(
          //         padding: EdgeInsets.zero,
          //         physics: NeverScrollableScrollPhysics(),
          //         itemCount: tex.length,
          //         itemBuilder: (context, index) => Column(
          //           children: [
          //             GestureDetector(
          //               onTap: () {
          //                 val.selText(index, context);
          //               },
          //               child: Row(
          //                 children: [
          //                   Container(
          //                     margin: EdgeInsets.only(
          //                       left: 10,
          //                       top: 10,
          //                     ),
          //                     height: 50,
          //                     width: 50,
          //                     decoration: BoxDecoration(
          //                         image: DecorationImage(
          //                           image: AssetImage(imag[index]),
          //                           fit: BoxFit.fill,
          //                         ),
          //                         color: Colors.white,
          //                         shape: BoxShape.circle,
          //                         boxShadow: [
          //                           BoxShadow(
          //                               color: Colors.black12,
          //                               offset: Offset(2, 2),
          //                               blurRadius: 2)
          //                         ],
          //                         border: Border.all(
          //                             color: Colors.redAccent, width: 3)
          //                     ),
          //                   ),
          //                   SizedBox(
          //                     width: 8,
          //                   ),
          //
          //                   /// List Text
          //                   Container(
          //                     padding: EdgeInsets.only(top: 10),
          //                     margin: EdgeInsets.all(10),
          //                     child: Text(
          //                       tex[index],
          //                       style: TextStyle(fontSize: 17),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Divider(
          //               color: Color(0xFFFFCCBC),
          //               thickness: 1,
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
