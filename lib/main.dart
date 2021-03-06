import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpm_provider/CommonWidget/notification_circle.dart';
import 'package:rpm_provider/Screens/Availability/Provider/availability_provider.dart';
import 'package:rpm_provider/Screens/Availability/Provider/setavail_provider.dart';

import 'package:rpm_provider/Screens/CreatePin/create_pin.dart';
import 'package:rpm_provider/Screens/Home/Provider/drawer_provider.dart';
import 'package:rpm_provider/Screens/Home/home_page.dart';
import 'package:rpm_provider/Screens/Offers/Components/add_new_offer.dart';
import 'package:rpm_provider/Screens/Profile/Provider/profile_provider.dart';
import 'package:rpm_provider/Screens/Settings/Provider/change_pass_provider.dart';
import 'package:rpm_provider/Screens/SplashScreen/splash%20page.dart';

import 'package:rpm_provider/Screens/Team/team_page.dart';
import 'package:rpm_provider/Screens/Verify_otp/Provider/verify_otp_provider.dart';
import 'Screens/Enterpin/Provider/enter_pin_provider.dart';
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
        ChangeNotifierProvider(create: (_) => PasswordProvider()),
        ChangeNotifierProvider(create: (_) => AvailabilityProvider()),
        ChangeNotifierProvider(create: (_) => SetAvailProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

         home:HomePage()),


);
  }
}
