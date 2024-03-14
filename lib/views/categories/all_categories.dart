import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/resusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/categories/widgets/category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(text: 'All Categories', 
        style: appStyle(12, kGray, FontWeight.w600)),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(top: 10.h, left: 12.w ),
          height: height,
          child:ListView(
          scrollDirection: Axis.vertical,
          children: 
            List.generate(categories.length, (i) {
              var category = categories[i];
              return CategoryTile(category: category);
            }
            ),
          
        ),
        
        ),
      ),
    );
  }
}

