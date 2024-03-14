import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/resusable_text.dart';
import 'package:foodly/constants/constants.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(text: "All Recommendations",
         style: appStyle(13.sp, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Recommendations"),
      ),
    );
  }
}