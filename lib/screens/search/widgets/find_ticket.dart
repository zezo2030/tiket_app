import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
      decoration: BoxDecoration(
        color: AppStyles.findTicketColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text("Find Tickets", style: AppStyles.textStyle.copyWith(
          color: Colors.white,
        )),
      )
    );
  }
}
