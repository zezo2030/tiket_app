import 'package:flutter/material.dart';

import '../styles/app_style.dart';

class BigCircle extends StatelessWidget {
  final  bool isRight ;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: isRight ?BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: AppStyles.bgColors,
        ):BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          color: AppStyles.bgColors,
        ),
      ),
    );
  }
}
