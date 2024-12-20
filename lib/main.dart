import 'package:flutter/material.dart';
import 'package:tiket_app/base/utils/app_routes.dart';
import 'package:tiket_app/base/bottom_navbar.dart';
import 'package:tiket_app/screens/home/all_ticket.dart';
import 'package:tiket_app/screens/home/hotel_details_screen.dart';
import 'package:tiket_app/screens/tickets/ticket_screen.dart';

import 'screens/home/all_hotel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // TODO: Implement the MaterialApp widgetc
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ticket App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const NavBarScreen(),
          "/all_ticketes": (context) => const AllTicket(),
          AppRoutes.ticketScreen: (context) =>  const TicketScreen(),
          AppRoutes.allHotel: (context) => const AllHotel(),
          AppRoutes.hotelDetailScreen: (context) => const HotelDetailsScreen(),
        });
  }
}
