import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyDetailsScreen extends StatelessWidget {
  const CompanyDetailsScreen({super.key, required this.map});

  final Map map;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text(map['title'],style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        showBackArrow: true,
        // leadingWidget: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 180.h,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(18.r),
                image: DecorationImage(image: AssetImage(map['logo']))
              ),
            ),

            SizedBox(height: DSizes.defaultSpace * 2),

            Padding(
              padding: EdgeInsets.all(2),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: DColors.primaryDark,
                            child: Icon(Icons.email, color: Colors.white),
                          ),
                          Text('Our Gmail', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: DColors.black)),
                          Text('ZARA73@gmail.com', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: DColors.black)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: VerticalDivider(
                        width: 1.w,
                        thickness: 1,
                        color: Colors.black.withOpacity(.2),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: DColors.primaryDark,
                            child: Icon(Icons.call, color: Colors.white),
                          ),
                          Text('Call us', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: DColors.black)),
                          Text('+2009876375634', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: DColors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
