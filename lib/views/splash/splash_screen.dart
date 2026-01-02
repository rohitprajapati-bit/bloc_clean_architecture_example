import 'package:bloc_clean_architecture/config/color/app_color.dart';
import 'package:bloc_clean_architecture/config/components/app_button.dart';
import 'package:bloc_clean_architecture/config/components/app_loding_widget.dart';
import 'package:bloc_clean_architecture/config/components/internet_exception.dart';
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:bloc_clean_architecture/data/exceptions/app_exception.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          throw NoInternetException('');
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InternetException(),
          AppButton(
            title: 'Home Screen',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.homeScreen);
            },
            color: AppColor.secondreyButtonColor,
          ),
          AppLodingWidget(),
          Center(child: Text('Splash Screen')),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.homeScreen);
            },
            child: Text('Home'),
          ),
        ],
      ),
    );
  }
}
