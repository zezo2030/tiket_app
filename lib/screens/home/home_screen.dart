import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tiket_app/base/utils/app_routes.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/app_double_text.dart';
import 'package:tiket_app/base/res/widgets/ticket_view.dart';
import 'package:tiket_app/base/utils/all_jason.dart';
import 'package:tiket_app/screens/home/widgets/hotel.dart';

import '../../base/res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColors,
        body: ListView(
          children: [
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // text good morning
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: AppStyles.headLineStyle3,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Book Ticket",
                            style: AppStyles.headLineStyle,
                          ),
                        ],
                      ),
                      // image container
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(AppMedia.logo),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F6FD),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFF8FC205),
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    onTapNav: () =>
                        Navigator.pushNamed(context, '/all_ticketes'),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .take(4)
                          .map((singleTiket) => GestureDetector(
                                onTap: () {
                                  var index = ticketList.indexOf(singleTiket);
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.ticketScreen,
                                    arguments: {"index": index},
                                  );
                                },
                                child: TicketView(
                                  ticket: singleTiket,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppDoubleText(
                    bigText: 'Hotels',
                    smallText: 'View all',
                    onTapNav: () {
                      Navigator.pushNamed(context, AppRoutes.allHotel);
                    },
                  ),
                  //? Hotel Cart View Section
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: hotelList
                          .take(4)
                          .map((singleHotel) => Hotel(
                                hotel: singleHotel,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
