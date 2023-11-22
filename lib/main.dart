import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kioskadmin/screens/splash/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kioskadmin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato'
      ),
      home: SplashPage(),
    );
  }
}

