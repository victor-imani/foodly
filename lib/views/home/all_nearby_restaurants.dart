import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/resusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(text: "All Nearby Restaurants",
         style: appStyle(13.sp, kGray, FontWeight.w600)),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
          children: 
            List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(restaurant: restaurant,);
            }
            ),
          
                ),
        ),
         ),
    );
  }
}