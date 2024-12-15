import 'dart:math';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

import '../base/res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColors,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
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
                            style: AppStyles.subTitleStyle,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Book Ticket",
                            style: AppStyles.titleStyle,
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
                  )
                ],
              ),
            )
          ],
        ));
  }
}
