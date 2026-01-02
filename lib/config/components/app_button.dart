import 'package:bloc_clean_architecture/config/color/app_color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Color? color;
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: color ?? AppColor.primeryButtonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(title),
      ),
    );
  }
}
