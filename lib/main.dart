import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:videostreaming_app/video_player.dart';
import 'package:videostreaming_app/login.dart';
// import 'package:videostreaming_app/pages/video_player.dart';
import 'package:videostreaming_app/register.dart';
import 'package:videostreaming_app/test_page.dart';
//import 'package:videostreaming_app/splashscreen.dart';
// import 'package:videostreaming_app/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 2000,
           splash: 'assets/logo1.png',splashIconSize: 245,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black,

          nextScreen: const MyLogin()),

      debugShowCheckedModeBanner: false,
      routes:{
        'login': (context)=> const MyLogin(),
        'register': (context)=> const MyRegister(),
        'someh': (context)=> const Myapp(),
      },);
  }
}
