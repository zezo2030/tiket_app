import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/app_layout_builder_widget.dart';
import 'package:tiket_app/base/res/widgets/big_circle.dart';
import 'package:tiket_app/base/res/widgets/big_dot.dart';
import 'package:tiket_app/base/res/widgets/text_style_fourth.dart';
import 'package:tiket_app/base/res/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 189,
        child: Container(
          margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
          child: Column(children: [
            // the blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlueColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Show Departure and destination with icon first line
                  Row(
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"]),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket["from"]["name"])),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),

                  // Show Departure and destination with time
                ],
              ),
            ),
            //circle and dots
            Container(
              color: AppStyles.ticketOrangeColor,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: true,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 20,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketOrangeColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    // Show Departure and destination with icon first line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            TextStyleThird(text: ticket["date"]),
                            const SizedBox(
                              height: 5,
                            ),
                            const TextStyleFourth(text: "Date"),
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            TextStyleThird(text: ticket["departure_time"]),
                            const SizedBox(
                              height: 5,
                            ),
                            const TextStyleFourth(text: "Departure Time"),
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextStyleThird(text: ticket["number"].toString()),
                            const SizedBox(
                              height: 5,
                            ),
                            const TextStyleFourth(text: "Number"),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ]),
        ));
  }
}
