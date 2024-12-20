import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/media.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/res/widgets/appColumnTextLayout.dart';
import 'package:tiket_app/base/res/widgets/app_layout_builder_widget.dart';
import 'package:tiket_app/base/res/widgets/text_style_fourth.dart';
import 'package:tiket_app/base/res/widgets/ticket_view.dart';
import 'package:tiket_app/base/utils/all_jason.dart';
import 'package:tiket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:tiket_app/screens/tickets/widgets/tticket_position_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    // setState(() {
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppStyles.bgColors,
        title: Text(
          "Tickets",
          style: AppStyles.headLineStyle,
        ),
      ),
      backgroundColor: AppStyles.bgColors,
      body: Center(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
                // const SizedBox(height: 40),
                // Text(
                //   "Tickets",
                //   style: AppStyles.headLineStyle,
                // ),
                // const SizedBox(height: 20),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "previous",
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                    isColor: true,
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                  color: AppStyles.ticketColor,
                  child: Column(children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            isColor: true,
                            topText: "Flutter DB",
                            bottomText: "Passenger",
                          ),
                          AppColumnTextLayout(
                            isColor: true,
                            topText: "5221 12345",
                            bottomText: "Passport",
                            isEnd: true,
                          )
                        ]),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 20,
                      isColor: true,
                      width: 6,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            isColor: true,
                            topText: "345893 54657836",
                            bottomText: "Number of E-tickets",
                          ),
                          AppColumnTextLayout(
                            isColor: true,
                            topText: "B12G45",
                            bottomText: "Booking Code",
                            isEnd: true,
                          ),
                        ]),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 20,
                      isColor: true,
                      width: 6,
                    ),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // AppColumnTextLayout(isColor: true,
                          //   topText: "VISA **** 1234",
                          //   bottomText: "Payment Method",
                          // ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppMedia.visaCard,
                                    scale: 12,
                                  ),
                                  const SizedBox(width: 3),
                                  Text(
                                    "*** 1234",
                                    style: AppStyles.headLineStyle3,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const TextStyleFourth(
                                text: "Payment Method",
                                isColor: true,
                              ),
                            ],
                          ),
                          const AppColumnTextLayout(
                            isColor: true,
                            topText: "\$123.45",
                            bottomText: "Price",
                            isEnd: true,
                          )
                        ]),
                  ]),
                ),
                const SizedBox(height: 1),
                // bottom of the ticket details section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                          height: 70,
                          drawText: false,
                          color: AppStyles.textColor,
                          width: double.infinity,
                          data: 'https://ww.zezo.com',
                          barcode: Barcode.code128()),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // colorful ticket
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
            const TicketPositionCircle(pos: true),
            const TicketPositionCircle(pos: false),
          ],
        ),
      ),
    );
  }
}
