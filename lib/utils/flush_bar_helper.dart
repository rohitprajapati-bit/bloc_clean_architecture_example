import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushBarHelper {
  static Flushbar? _currentFlushbar;

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushBar(message, context, Colors.red, Icons.error);
  }

  static void flushBarSuccessMessage(String message, BuildContext context) {
    showFlushBar(message, context, Colors.green, Icons.check);
  }

  static void showFlushBar(
    String message,
    BuildContext context,
    Color backgroundColor,
    IconData iconData,
  ) {
    _currentFlushbar?.dismiss();
    _currentFlushbar = Flushbar(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      message: message,
      duration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: backgroundColor,
      forwardAnimationCurve: Curves.linear,
      reverseAnimationCurve: Curves.linear,
      positionOffset: 20,
      icon: Icon(iconData, size: 28, color: Colors.white),
    );
    _currentFlushbar!.show(context);
  }
}
