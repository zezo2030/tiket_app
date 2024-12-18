import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyles.ticketTabColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(children: [
        AppTabs(tabText: firstTab, tabBorder: false),
        AppTabs(
          tabText: secondTab,
          tabBorder: true,
          tabColor: true,
        ),
      ]),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: tabColor == false ? Colors.white : Colors.transparent,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      width: size.width * 0.44,
      child: Center(child: Text(tabText)),
    );
  }
}
