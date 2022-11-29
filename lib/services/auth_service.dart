import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService extends ChangeNotifier {
  final String _baseUrl = "identitytoolkit.googleapis.com";
  final String _firebaseToken = "AIzaSyDlPdUi0WhfqcY3FPw47WLEj805paMbbTo";

  //método para crear un usuario
  Future<String?> crearUsuario(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url = Uri.https(_baseUrl, '/v1/accounts:signUp',{'key': _firebaseToken});

    final resp = await http.post(url,body: json.encode(authData));
    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    //print(decodeResp);
    if(decodeResp.containsKey('idToken')) {
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

    //método para login
  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url = Uri.https(_baseUrl, '/v1/accounts:signInWithPassword',{'key': _firebaseToken});

    final resp = await http.post(url,body: json.encode(authData));
    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    //print(decodeResp);
    if(decodeResp.containsKey('idToken')) {
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }
}