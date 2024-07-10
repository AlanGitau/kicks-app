import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
//import 'package:splashscreen1/homepage.dart';
import 'loginScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return  EasySplashScreen(
      //logo: Image.network('https://images-platform.99static.com//PsaKSJv3b_Y-k5m2GVF1ODlcI6A=/237x20:787x570/fit-in/500x500/99designs-contests-attachments/47/47413/attachment_47413581'),
      logo:Image.asset('Deliveryman Riding scooter.gif'),
      backgroundColor:Colors.orangeAccent,
      logoWidth: 100,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: Text('loading...',
      style: TextStyle(color: Colors.white, fontSize: 20),),
      navigator: LoginPage(),
      durationInSeconds: 4,

    );
  }
}