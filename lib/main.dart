import 'package:flutter/material.dart';
import 'package:unihack/SignUpPage.dart';
import 'package:unihack/welcome_page.dart';
import 'nav.dart';
import 'welcome_page.dart';
import './homepage.dart';
import './analytics.dart';
import './settings.dart';
import './mood_settings.dart';
import './LoginPage.dart';
import 'SignUpPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/moods': (context) => const Mood(),
        '/loginpage': (context)=> const Loginpage(),
        '/signup' : (context)=> const SignupPage(),
        '/homepage': (context) => HomePage(),
        '/bottomnav': (context) => BottomNav(),
      },
      home: const WelcomePage(),
    );
  }
}
