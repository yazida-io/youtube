import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const _api = "http://localhost:8000/api";

  static Future<bool> signIn(String email, String password) async {
    var response = await http.post(Uri.parse('$_api/login'), body: {
      'email': email,
      'password': password,
    }, headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode != 200) {
      return false;
    }

    // mouctar@yazida.io | password

    final SharedPreferences preferences = await SharedPreferences.getInstance();
    var data = jsonDecode(response.body);

    await preferences.setString("auth:user", jsonEncode(data['user']));

    await preferences.setString("auth:token", data['access_token']);

    return true;
  }

  static Future<bool> signOut() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.remove("auth:user");
    await preferences.remove("auth:token");

    return true;
  }

  static Future<Map<String, dynamic>?> getUser() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    var user = preferences.getString("auth:user");

    if (user == null) {
      return null;
    }

    return jsonDecode(user);
  }

  static Future<String?> getToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    var token = preferences.getString("auth:token");

    if (token == null) {
      return null;
    }

    return token;
  }

  static Future<bool> check() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    var user = preferences.getString("auth:user");
    var token = preferences.getString("auth:token");

    if (user == null || token == null) {
      return false;
    }

    return true;
  }
}
