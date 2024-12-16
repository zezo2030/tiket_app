import 'package:flutter/material.dart';
import 'package:tiket_app/base/bottom_navbar.dart';
import 'package:tiket_app/screens/home/all_ticket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      },
    );
  }
}
