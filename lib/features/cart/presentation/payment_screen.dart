import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_bottom_navigation_in_payment.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_continer_payment.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isTagel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text("Payment", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          children: [
          Expanded(
            flex: 6,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                CustomContainerPayment(paymentName: "Checkout with Fawaterak", onTap: (){
                  setState(() {
                    isTagel = true;
                  });
                }, isTagel: isTagel),
                SizedBox(height: 10.h),
                CustomContainerPayment(paymentName: "Checkout with Wallet", onTap: (){
                  setState(() {
                    isTagel = true;
                  });
                }, isTagel: false),
                SizedBox(height: 10.h),
                CustomContainerPayment(paymentName: "Payment when recieving", onTap: (){
                  setState(() {
                    isTagel = true;
                  });
                }, isTagel: false),
                SizedBox(height: 10.h),
                CustomContainerPayment(paymentName: "Your withdrawal balance : 0 EGP \n payment term", onTap: (){
                  setState(() {
                    isTagel = true;
                  });
                }, isTagel: false),

              ],
            ),
          ),
            const Expanded(
              flex: 3,
              child: Column(
                children: [
                  CustomBottomNavigationInPayment(),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
