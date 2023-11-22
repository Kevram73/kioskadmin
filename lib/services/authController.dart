
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kioskadmin/requests/authRequest.dart';
import 'package:kioskadmin/screens/home/index.dart';

class AuthController extends GetxController{

  final RxString email = ''.obs;
  final RxString password = ''.obs;

  final RxBool isEmailValid = true.obs;
  final RxBool isPasswordValid = true.obs;

  @override
  void onInit(){
    super.onInit();
  }

  submitForm(){
    if(email.value.isEmpty){
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    if(password.value.isEmpty){
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }
    if(isEmailValid.value && isPasswordValid.value){
      login(email.value, password.value).then((value) => Get.offAll(HomeScreen()));
    } else {
      print('Form validation failed. Please check the fields');
    }
  }

  Future<bool> login(String email, String password) async{
    try {
      final _userInfo = await AuthRequest().login(email, password);
      
      var _token = _userInfo['token'];
      final box = GetStorage();
      box.write('user_token', _token);
      box.write('user_prenom', _userInfo['user']['prenom']);
      box.write('user_id', _userInfo['user']['id']);
      box.write('user_nom', _userInfo['user']['nom']);
      box.write('user_email', _userInfo['user']['email']);
      box.write('user_phone', _userInfo['user']['contact']);
      box.write('boutique_id', _userInfo['user']['boutiqueId']);
      box.write('user_authenticated', true);
      box.save();
      return true;
    } catch(e){
      return false;
    }

  }

  

  Future<bool> logout() async {
    final box = GetStorage();
    box.erase();
    return true;
  }
}