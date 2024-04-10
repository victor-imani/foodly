import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/resusable_text.dart';
import 'package:foodly/constants/constants.dart';


class FoodTile extends StatelessWidget {
   FoodTile({super.key, required this.food});

  final dynamic food;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(food['imageUrl'] ?? '', fit: BoxFit.cover,),

                        ),

                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                            color: kGray.withOpacity(0.6),
                            height: 16.h,
                            width: width,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: ((context, index) {
                                return const Icon(Icons.star, color: kSecondary);
                              }
                              ),
                              itemSize: 15.h,
                              ),
                          ),
                          ),
                     
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: food['title'], 
                        style: appStyle(11.sp, kDark, FontWeight.w400),
                        ),
                        ReusableText(
                        text: "Delivery time: ${food['time']}", 
                        style: appStyle(11.sp, kGray, FontWeight.w400),
                        ),

                        SizedBox(
                          width: width * 0.7,
                          height: 15.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: food['additives'].length,
                            itemBuilder: ((context, index) {
                              var additive = food['additives'][index];
                            return Container(
                              margin: EdgeInsets.only(right: 5.w),
                              decoration: BoxDecoration(
                                color: kSecondaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(9.r)),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(2.h),
                                  child: ReusableText(
                                    text: additive['title'], 
                                    style: appStyle(8.sp, kGray, FontWeight.w400)),
                                  ),
                              ),
                            );
                            }
                            ),
                        ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            right: 5.w,
            top: 6.h,
             child: Container(
              width: 60.w,
              height: 19.h,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(child: ReusableText(text: 
              "\$ ${food['price'].toStringAsFixed(2)}",
               style: appStyle(12.sp, kLightWhite, FontWeight.w500))),
             ),),

           Positioned(
            right: 75.w,
            top: 6.h,
             child: GestureDetector(
              onTap: () {
                
              },
               child: Container(
                width: 19.w,
                height: 19.h,
                decoration: BoxDecoration(
                  color: kSecondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Icon(MaterialCommunityIcons.cart_plus, size: 15.h, color: kLightWhite,)),
               ),
             ),),
        ],
      ),
    );
  }
}