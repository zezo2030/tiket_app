import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/widgets/text_style_fourth.dart';
import 'package:tiket_app/base/res/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key, required this.isColor, required this.topText, required this.bottomText, this.isEnd});

  final bool? isColor;
  final String topText;
  final String bottomText;
  final  bool? isEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isEnd == null? CrossAxisAlignment.start: CrossAxisAlignment.end,
      children: [
        TextStyleThird(text: topText,isColor: isColor),
        const SizedBox(height: 3),
        TextStyleFourth(text: bottomText,isColor: isColor),
      ],
    );
  }
}
