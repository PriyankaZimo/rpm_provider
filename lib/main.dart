import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:rpm_provider/Provider/enter_pin_provider.dart';
import 'package:rpm_provider/Provider/verify_otp_provider.dart';
import 'package:rpm_provider/Screens/ClientPage/client_page.dart';
import 'package:rpm_provider/notification.dart';
import 'package:rpm_provider/splash%20page.dart';
import 'Screens/SignIn/sign_in_page.dart';
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
        ChangeNotifierProvider(create: (_) => VerifyOtpProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:SignInPage()),
    );
  }
}
