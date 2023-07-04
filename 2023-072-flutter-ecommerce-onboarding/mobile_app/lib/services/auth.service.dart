import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const _api = 'http://localhost:8000/api';

  static Future<bool> signIn(String email, String password) async {
    var response = await http.post(Uri.parse("$_api/login"),
        body: {"email": email, "password": password},
        headers: {"Accept": "application/json"});

    if (response.statusCode != 200) {
      return Future.value(false);
    }

    var data = jsonDecode(response.body);

    final SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString('auth:token', data['access_token']);
    preferences.setString('auth:user', jsonEncode(data['user']));

    return Future.value(true);
  }

  static Future<bool> signUp(
      {required String fullName,
      required String email,
      required String password}) async {
    var response = await http.post(Uri.parse("$_api/register"),
        body: {"name": fullName, "email": email, "password": password},
        headers: {"Accept": "application/json"});

    return Future.value(response.statusCode == 201);
  }

  static Future<bool> check() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    await Future.delayed(const Duration(seconds: 1));

    var token = preferences.getString('auth:token');
    var user = preferences.getString('auth:user');

    return Future.value(token != null && user != null && token.isNotEmpty && user.isNotEmpty);
  }

  static Future<void> signOut() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
