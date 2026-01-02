import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLodingWidget extends StatelessWidget {
  const AppLodingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Center(
        child: Platform.isAndroid
            ? CircularProgressIndicator()
            : CupertinoActivityIndicator(),
      ),
    );
  }
}
