import 'package:flutter/material.dart';
import '../styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final bool? isColor;
  const TextStyleFourth(
      {super.key, required this.text, this.textAlign = TextAlign.start, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      //maxLines: 1,
      softWrap: false,
      style:AppStyles.headLineStyle4.copyWith(
        color: isColor==null ? Colors.white: Colors.grey,
        //fontStyle: FontStyle.italic,
        //overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
