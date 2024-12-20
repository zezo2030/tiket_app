import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/utils/all_jason.dart';
import 'package:tiket_app/screens/home/widgets/hotel.dart';

class AllHotel extends StatelessWidget {
  const AllHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColors,
      appBar: AppBar(
        title:  Text("All Hotels",style: AppStyles.headLineStyle,),
        centerTitle: true,
        backgroundColor: AppStyles.bgColors,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.0,

            ),
            itemCount: hotelList.length, // Replace with the total number of hotels
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return Hotel(hotel: singleHotel,);
            },
        ),
      ),
    );
  }
}
