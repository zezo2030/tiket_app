import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            //margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${hotel["image"]}",
                  //AppMedia.hotelRoom1
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["name"],
              style: AppStyles.headLineStyle.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["destination"],
              style: AppStyles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "\$${hotel["price"]}/night",
              style: AppStyles.headLineStyle.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
