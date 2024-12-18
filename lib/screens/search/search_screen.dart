import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/media.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/app_double_text.dart';
import 'package:tiket_app/screens/search/widgets/app_text_icon.dart';
import 'package:tiket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:tiket_app/screens/search/widgets/find_ticket.dart';
import 'package:tiket_app/screens/search/widgets/ticket_promothion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColors,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nYou looking for?",
            style: AppStyles.headLineStyle.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(),
          const SizedBox(height: 25),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 25),
          const FindTicket(),
          const SizedBox(height: 20),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            onTapNav: () => Navigator.pushNamed(context, "/all_ticketes"),
          ),
          const SizedBox(height: 15),
          const TicketPromothion(),
        ],
      ),
    );
  }
}
