import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:rpm_provider/Provider/enter_pin_provider.dart';
import 'package:rpm_provider/Provider/verify_otp_provider.dart';
import 'package:rpm_provider/Screens/ClientPage/client_page.dart';
import 'package:rpm_provider/Screens/Profile/Provider/profile_provider.dart';
import 'package:rpm_provider/Screens/Profile/profile_page.dart';
import 'package:rpm_provider/notification.dart';
import 'package:rpm_provider/select_role.dart';
import 'package:rpm_provider/settings.dart';
import 'package:rpm_provider/splash%20page.dart';
import 'Screens/ClientPage/components/add_client.dart';
import 'Screens/SignIn/sign_in_page.dart';
import 'add_new_offer.dart';
import 'change_password.dart';
import 'offer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EnterPinProvider()),
        ChangeNotifierProvider(create: (_) => VerifyOtpProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

          home: Add_offers ()),
    );


  }
}
