import 'package:flutter/material.dart';

import '../styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text});

  final String text;


  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyles.headLineStyle3.copyWith(
          color: Colors.white,
        ));
  }
}
