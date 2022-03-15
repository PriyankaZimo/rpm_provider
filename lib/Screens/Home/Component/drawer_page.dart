import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Screens/Home/Provider/drawer_provider.dart';
import 'package:rpm_provider/Util/constants.dart';

class DrawerPage extends StatelessWidget {
  late DrawerProvider _drawerProvider;

  @override
  Widget build(BuildContext context) {
    _drawerProvider = context.read<DrawerProvider>();
    return Container(
      width: 270,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: const Text(
              'ISKEDO',
              style: const TextStyle(color: const Color(0xFFFF8A80), fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Color(0xFFFF8A80),
              thickness: 1,
            ),
          ),

          /// List View
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: type.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Consumer<DrawerProvider>(
                      builder: (context, val, child) => Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                val.selText(index, context);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color(0xFFFF8A80),
                                            width: 4)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.all(index == 0 ? 0 : 8),
                                      height: 50,
                                      width: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(3, 3),
                                              blurRadius: 3),
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(5, 5),
                                              blurRadius: 5)
                                        ],
                                      ),
                                      child: Image.asset(
                                        type[index]['img'],
                                        height: type[index]['size'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),

                                  /// List Text
                                  Container(
                                    child: Text(
                                      type[index]['txt'],
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Color(0xFFFF8A80),
                              thickness: 1,
                            )
                          ],
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
