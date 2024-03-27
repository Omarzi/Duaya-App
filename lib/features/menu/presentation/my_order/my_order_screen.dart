import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/menu/presentation/my_order/widgets/custom_container_order/custom_container_order.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(
        title: Text("My Order"),
        centerTitle: true,
        showBackArrow: true,
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor: DColors.primary,
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            tabs: [
              const Tab(text: "Requested"),
              const Tab(text: "Completed"),
              const Tab(text: "Cancelled"),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(DSizes.spaceBtwItems),
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context,index){
                            return SizedBox(height: DSizes.spaceBtwItems);
                          },
                            itemCount: 12,
                            itemBuilder:
                                (context ,index){
                              return const CustomContainerOrder();
                            }),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                        separatorBuilder: (context,index){
                          return SizedBox(height: DSizes.spaceBtwItems);
                        },
                        itemCount: 12,
                        itemBuilder:
                            (context ,index){
                          return GestureDetector(
                              onTap: (){},
                              child: const CustomContainerOrder());
                        }),
                  ),
                  Expanded(
                    child: ListView.separated(
                        separatorBuilder: (context,index){
                          return SizedBox(height: DSizes.spaceBtwItems);
                        },
                        itemCount: 1,
                        itemBuilder:
                            (context ,index){
                          return GestureDetector(
                              onTap: (){},
                              child: const CustomContainerOrder());
                        }),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
