import 'package:duaya_app/common/widgets/text_form_field/custom_text_form_field_search.dart';
import 'package:duaya_app/features/category/presentation/category/presentation/widget/custom_body_in_category/custom_brand_body.dart';
import 'package:duaya_app/features/category/presentation/category/presentation/widget/custom_body_in_category/custom_category_body.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>  with SingleTickerProviderStateMixin{

  TextEditingController searchController = TextEditingController();
  bool isPressed = true;
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 24.h,),
    CustomTextFormFieldSearch( hintText: "Search here", controller: searchController),

        /// Make Space
        SizedBox(height: DSizes.spaceBtwItems * 2),
        TabBar(
          indicatorColor: DColors.primary,
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          tabs: const [
            Tab(text: "Category"),
            Tab(text: "Company"),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(DSizes.spaceBtwItems),
            child: TabBarView(
              controller: _tabController,
              children: const [
                // first tab bar view widget
               CustomCategoryBody(),
                CustomBrandBody()
              ],
            ),
          ),
        ),
      ],
    );
    //   SingleChildScrollView(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(
    //         horizontal: DSizes.spaceBtwTexts * 2,
    //         vertical: DSizes.spaceBtwItems),
    //     child: Column(
    //       children: [
    //         /// Text Form Field for search
    //         CustomTextFormFieldSearch(
    //             hintText: "Search here", controller: searchController),
    //         SizedBox(height: DSizes.spaceBtwItems * 2),
    //         /// Button Category And Brand
    //         // Row(
    //         //   children: [
    //         //     Expanded(
    //         //         flex: 1,
    //         //         child: CustomCheckInCategory(textButton: "Category",
    //         //           onTap: (){setState(() {isPressed = true;});},
    //         //           isPressed: isPressed,)),
    //         //     Expanded(
    //         //         flex: 1,
    //         //         child: CustomCheckInCategory(textButton: "Brands", onTap: (){setState(() {
    //         //           isPressed = false;
    //         //         });}, isPressed: !isPressed)),
    //         //   ],
    //         // ),
    //         //  SizedBox(height: DSizes.spaceBtwItems * 2),
    //         // /// Check Category Or Brand
    //         // isPressed ? const CustomCategoryBody() : const CustomBrandBody(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
