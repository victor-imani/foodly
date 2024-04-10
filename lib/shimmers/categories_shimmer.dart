import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'shimmer_widget.dart';

class CategoriesShimmer extends StatelessWidget {
  const CategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      height: 80.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ShimmerWidget(
                    shimmerWidth: 70.w,
                    shimmerHeight: 60.h,
                    shimmerRadius: 12.r),
              ],
            );
          }),
    );
  }
}
