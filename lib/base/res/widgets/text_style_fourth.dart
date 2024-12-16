import 'package:flutter/material.dart';
import '../styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  const TextStyleFourth(
      {super.key, required this.text, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      //maxLines: 1,
      softWrap: false,
      style: AppStyles.headLineStyle4.copyWith(
        color: Colors.white,
        //fontStyle: FontStyle.italic,
        //overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
