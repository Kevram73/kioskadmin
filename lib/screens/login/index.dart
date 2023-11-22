import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kioskadmin/config/colors.dart';
import 'package:kioskadmin/screens/home/index.dart';
import 'package:kioskadmin/services/authController.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  AuthController controller = Get.put(AuthController());
  RxBool processing = false.obs;
  bool isObscureTextPassword=true;

  

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("Kioskadmin", style: TextStyle(color: Coloors.primaryColor, fontSize: 45, fontWeight: FontWeight.w700, height: 1.2, letterSpacing: 1.2, fontStyle: FontStyle.italic),)),
                Center(
                  child: Text(
                    'Connectez pour continuer.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
              
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  TextFormField(
                    cursorColor: Coloors.primaryColor,
                    onChanged: (value) => controller.email.value = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                    
                     labelStyle: TextStyle(color: Coloors.primaryColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                      ),
                      focusColor: Coloors.primaryColor,
                      fillColor: Coloors.primaryColor,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FaIcon(FontAwesomeIcons.user, size:20, color: Coloors.primaryColor,),
                      ),
                      labelText: "Adresse email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                      )
                    ),
                  
                  const SizedBox(height: 40),
                  TextFormField(
                    cursorColor: Coloors.primaryColor,
                    obscureText: true,
                    onChanged: (value) => controller.password.value = value,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Coloors.primaryColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                      ),
                      focusColor: Coloors.primaryColor,
                      fillColor: Coloors.primaryColor,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FaIcon(FontAwesomeIcons.lock, size:20, color: Coloors.primaryColor),
                      ),
                      labelText: "Mot de passe",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                      )
                  ),
                 
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Coloors.primaryColor),
                    onPressed: () => Get.to(HomeScreen()), child: const Text("Connexion", style: TextStyle(fontSize: 18)))),
                  const SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


  

  