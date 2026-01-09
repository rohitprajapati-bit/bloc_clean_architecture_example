import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import '../storage/local_storage.dart';

class SessionController {
  static final SessionController _sessionController =
      SessionController._instance();
  final localStorage = LocalStorage();
  UserModel user = UserModel();
  bool? isLogin;
  SessionController._instance() {
    isLogin = false;
  }

  factory SessionController() {
    return _sessionController;
  }

  Future<void> svaUserInPreference(dynamic user) async {
    await localStorage.setValue('token', jsonEncode(user));
    await localStorage.setValue('isLogin', 'true');
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await localStorage.readValue('token');
      var isLogin = await localStorage.readValue('isLogin');

      if (userData.isNotEmpty) {
        SessionController().user = UserModel.fromJson(jsonDecode(userData));
      }
      SessionController().isLogin = isLogin == 'true' ? true : false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
