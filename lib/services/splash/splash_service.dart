import 'dart:async';

import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.homeScreen,
        (route) => false,
      );
    });
  }
}
