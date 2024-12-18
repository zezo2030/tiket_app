import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

class AppTextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children:[
          Icon(icon, color: AppStyles.planeColor),
          const SizedBox(width: 8),
          Text(text, style: AppStyles.textStyle,),
        ]
      ),
    );
  }
}
