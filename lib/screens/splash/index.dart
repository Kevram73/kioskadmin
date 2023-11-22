import 'dart:developer';

import 'package:easy_splash_screen/easy_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kioskadmin/screens/home/index.dart';
import 'package:kioskadmin/screens/login/index.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
  final token = box.read("user_token");
  
    return EasySplashScreen(
      logo: Image.asset(
          'assets/images/Kimage.png', width: 400,),
      title: Text(
        "Bienvenue sur Kiosk-Admin",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Chargement..."),
      navigator: token != null? HomeScreen():
      LoginScreen(),
      durationInSeconds: 3,
    );
  }
}