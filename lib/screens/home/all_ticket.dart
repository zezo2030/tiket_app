import 'package:flutter/material.dart';
import 'package:tiket_app/base/app_routes.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/ticket_view.dart';
import 'package:tiket_app/base/utils/all_jason.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColors,
      appBar: AppBar(
        backgroundColor: AppStyles.bgColors,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "All Ticket",
              style: AppStyles.headLineStyle,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: ticketList.map((ticket) {
              return GestureDetector(
                onTap: () {
                  var index = ticketList.indexOf(ticket);
                  Navigator.pushNamed(
                    context,
                    AppRoutes.ticketScreen,
                    arguments: {"index": index},
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TicketView(
                    ticket: ticket,
                    wholeScreen: true,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
