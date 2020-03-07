import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optelgoa/adminlogin.dart';
import 'package:optelgoa/adminpage.dart';
import 'package:optelgoa/attendance.dart';
import 'package:optelgoa/dashboard.dart';
import 'package:optelgoa/profile.dart';
import 'package:optelgoa/welcome_screen.dart';
import 'package:optelgoa/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String ip = "99.1.1.14";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
     debugShowCheckedModeBanner: false,
    initialRoute: WelcomeScreen.id,
    routes: {
WelcomeScreen.id:(context)=>WelcomeScreen(),
LoginScreen.id:(context)=>LoginScreen(),
AdminLogin.id:(context)=>AdminLogin(),
Dashboard.id:(context)=>Dashboard(),
Attendance.id:(context)=>Attendance(),
AdminPAge.id:(context)=>AdminPAge(),
Profile.id:(context)=>Profile(),

    }
    );
  }
}
