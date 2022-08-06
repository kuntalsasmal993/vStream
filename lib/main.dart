import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:videostreaming_app/login.dart';
import 'package:videostreaming_app/register.dart';
import 'package:videostreaming_app/screens/home_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
//import 'package:videostreaming_app/splashscreen.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        duration: 2000,
           splash: 'assets/logo1.png',splashIconSize: 245,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black,

          // nextScreen: MyLogin()),
        nextScreen: HomeScreen()),

      debugShowCheckedModeBanner: false,
      routes:{
        'login': (context)=>MyLogin(),
        'register': (context)=>MyRegister()
      },);
  }
}

