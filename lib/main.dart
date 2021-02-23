import 'package:Liter/screens/his.dart';
import 'package:Liter/screens/home.dart';
import 'package:Liter/screens/log.dart';
import 'package:Liter/screens/reg.dart';
import 'package:Liter/screens/ter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget exp = SplashScreenView(
      imageSrc: 'images/logo1.png',
      text: "    Welcome to      LI-TER",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      home: Log(),
      duration: 5000,
      backgroundColor: Colors.white,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: exp,
      routes: {
        "ter": (context) => Ter(),
        "home": (context) => Home(),
        "hist": (context) => Hist(),
        "log": (context) => Log(),
        "reg": (context) => Reg(),
      },
    );
  }
}
