import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

import '../../../base/res/media.dart';

class TicketPromothion extends StatelessWidget {
  const TicketPromothion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: size.width * 0.42,
          height: 435,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  //color: AppStyles.ticketTabColor,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.planeSite),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "20% discount on the early booking of this flight. Dont miss",
                style: AppStyles.headLineStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A8888),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor Survey",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppStyles.circuleColor,
                        width: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: "😍", style: TextStyle(fontSize: 30)),
                        TextSpan(text: "🥰", style: TextStyle(fontSize: 45)),
                        TextSpan(text: "😘", style: TextStyle(fontSize: 27)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
