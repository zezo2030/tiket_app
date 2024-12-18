import 'package:flutter/material.dart';

import '../styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text, this.isColor});

  final String text;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: isColor == null
            ? AppStyles.headLineStyle3.copyWith(
                color: Colors.white,
              )
            : AppStyles.headLineStyle3);
  }
}
