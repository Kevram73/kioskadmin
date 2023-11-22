import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kioskadmin/config/url.dart';


class AuthRequest{
  dynamic login(String email, String password) async {
    
    final requestBody = new Map<String, dynamic>();
    requestBody['email'] = email;
    requestBody['password'] = password;
    
    final response = await http.post(Uri.parse(Url.loginCollector), body: requestBody);
    final data =json.decode(response.body);

    return data;

  }

  dynamic getSolde(String token) async {
    final response = await http.get(Uri.parse(Url.getSolde), headers: {
      "Authorization" : "Bearer $token"
    });
    final data =json.decode(response.body);

    return data;
  }

}