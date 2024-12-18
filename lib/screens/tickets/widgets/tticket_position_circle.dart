import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

class TicketPositionCircle extends StatelessWidget {
  const TicketPositionCircle({super.key,  required this.pos});

  final bool pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos== true? 22:null,
      right: pos == false ? 22 : null,
      top: 250,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: AppStyles.textColor),

        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
