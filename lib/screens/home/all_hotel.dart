import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/utils/all_jason.dart';
import 'package:tiket_app/base/utils/app_routes.dart';

class AllHotel extends StatelessWidget {
  const AllHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColors,
      appBar: AppBar(
        title: Text(
          "All Hotels",
          style: AppStyles.headLineStyle,
        ),
        centerTitle: true,
        backgroundColor: AppStyles.bgColors,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.0,
            ),
            itemCount:
                hotelList.length, // Replace with the total number of hotels
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.hotelDetailScreen,
                        arguments: {"index": index},);
                  },
                  child: HotelGrid(
                    hotel: singleHotel,
                  ));
            },
          ),
        ),
      ),
    );
  }
}

class HotelGrid extends StatelessWidget {
  const HotelGrid({super.key, required this.hotel});

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
          AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              //height: 80,
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
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              hotel["name"],
              maxLines: 1,
              style: AppStyles.headLineStyle2.copyWith(
                color: AppStyles.kakiColor,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hotel["destination"],
                style: AppStyles.headLineStyle3.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                "\$${hotel["price"]}/night",
                style: AppStyles.headLineStyle4.copyWith(
                  color: AppStyles.kakiColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
