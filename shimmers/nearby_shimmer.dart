import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';
import 'shimmer_widget.dart';

class NearbyShimmer extends StatelessWidget {
  const NearbyShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 10),
      height: 190.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return ShimmerWidget(
                shimmerWidth: width * 0.8,
                shimmerHieght: 180.h,
                shimmerRadius: 12);
          }),
    );
  }
}
