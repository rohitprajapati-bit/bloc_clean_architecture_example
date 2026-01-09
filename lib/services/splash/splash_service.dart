import 'dart:async';

import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:bloc_clean_architecture/services/session_manager/session_controller.dart';
import 'package:flutter/material.dart';

class SplashService {
  static void isLogin(BuildContext context) {
    SessionController()
        .getUserFromPreference()
        .then((value) {
          if (SessionController().isLogin ?? false) {
            Timer(Duration(seconds: 3), () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.homeScreen,
                (route) => false,
              );
            });
          } else {
            Timer(Duration(seconds: 3), () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.loginScreen,
                (route) => false,
              );
            });
          }
        })
        .onError((error, stackTrace) {
          Timer(Duration(seconds: 3), () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              RoutesName.loginScreen,
              (route) => false,
            );
          });
        });

    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushNamedAndRemoveUntil(
    //     context,
    //     RoutesName.homeScreen,
    //     (route) => false,
    //   );
    // });
  }
}
