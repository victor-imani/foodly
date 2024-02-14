import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/category_widget.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: 
          List.generate(categories.length, (i) {
            var category = categories[i];
            return CategoryWidget(category: category);
          }
          ),
        
      ),
    );
  }
}

