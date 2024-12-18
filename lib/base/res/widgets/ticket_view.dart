import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/appColumnTextLayout.dart';
import 'package:tiket_app/base/res/widgets/app_layout_builder_widget.dart';
import 'package:tiket_app/base/res/widgets/big_circle.dart';
import 'package:tiket_app/base/res/widgets/big_dot.dart';
import 'package:tiket_app/base/res/widgets/text_style_fourth.dart';
import 'package:tiket_app/base/res/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        //color: Colors.red,
        margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
        child: Column(
          children: [
            // the blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketBlueColor
                    : AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: AppColumnTextLayout(
                      isColor: isColor,
                      topText: ticket["from"]["code"],
                      bottomText: ticket["from"]["name"],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            BigDot(
                              isColor: isColor,
                            ),
                            Expanded(
                                child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilderWidget(
                                    randomDivider: 6,
                                    isColor: isColor,
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                      angle: 1.57,
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: isColor == null
                                            ? Colors.white
                                            : AppStyles.wightTicketColor,
                                      )),
                                ),
                              ],
                            )),
                            BigDot(
                              isColor: isColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextStyleFourth(
                            text: ticket["flying_time"], isColor: isColor),
                      ],
                    ),
                  ),
                  Expanded(
                    child: AppColumnTextLayout(
                      isColor: isColor,
                      topText: ticket["to"]["code"],
                      bottomText: ticket["to"]["name"],
                      isEnd: true,
                    ),
                  ),
                ],
              ),
            ),
            //circle and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrangeColor
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  const BigCircle(
                    isRight: true,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    isColor: isColor,
                    randomDivider: 20,
                    width: 6,
                  )),
                  const BigCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketOrangeColor
                    : AppStyles.ticketColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleThird(
                              text: ticket["date"], isColor: isColor),
                          const SizedBox(
                            height: 5,
                          ),
                          TextStyleFourth(text: "Date", isColor: isColor),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        children: [
                          TextStyleThird(
                              text: ticket["departure_time"], isColor: isColor),
                          const SizedBox(
                            height: 5,
                          ),
                          TextStyleFourth(
                              text: "Departure Time", isColor: isColor),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(
                              text: ticket["number"].toString(),
                              isColor: isColor),
                          const SizedBox(
                            height: 5,
                          ),
                          TextStyleFourth(text: "Number", isColor: isColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
