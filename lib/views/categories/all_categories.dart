import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/resusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/hooks/fetch_all_categories.dart';
import 'package:foodly/models/categories.dart';
import 'package:foodly/shimmers/foodlist_shimmer.dart';
import 'package:foodly/views/categories/widgets/category_tile.dart';

class AllCategories extends HookWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final hookResults = useFetchAllCategories();
    List<CategoriesModel>? categories = hookResults.data;
    final isLoading = hookResults.isLoading;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(text: 'All Categories', 
        style: appStyle(12, kGray, FontWeight.w600)),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: isLoading? FoodsListShimmer(): Container(
          padding: EdgeInsets.only(top: 10.h, left: 12.w ),
          height: height,
          child:ListView(
          scrollDirection: Axis.vertical,
          children: 
            List.generate(categories!.length, (i) {
              CategoriesModel category = categories[i];
              return CategoryTile(category: category);
            }
            ),
          
        ),
        
        ),
      ),
    );
  }
}

