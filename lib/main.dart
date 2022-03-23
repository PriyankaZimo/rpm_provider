import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/Provider/enter_pin_provider.dart';
import 'package:rpm_provider/Provider/verify_otp_provider.dart';
import 'package:rpm_provider/Screens/Home/home_page.dart';
import 'package:rpm_provider/Screens/Profile/Provider/profile_provider.dart';
import 'package:rpm_provider/Screens/Settings/Provider/change_pass_provider.dart';
import 'package:rpm_provider/Screens/Team/Provider/add_provider.dart';
import 'package:rpm_provider/splash%20page.dart';

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
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => AddProvider()),
        ChangeNotifierProvider(create: (_) => PasswordProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage()),
    );
  }
}
