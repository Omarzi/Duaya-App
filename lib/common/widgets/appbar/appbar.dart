import 'package:duaya_app/common/managers/language/language_cubit.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/device/device_utility.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/exports.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.centerTitle = false,
     this.leadingWidget,
    this.actions,
    this.bgColor,
    this.arrowBackColor = false,
    this.showBackGroundColor = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final bool showBackGroundColor;
  final bool centerTitle;
  final bool arrowBackColor;
  // final IconData? leadingIcon;
  final List<Widget>? actions;
  // final VoidCallback? leadingOnPressed;
  final Widget? leadingWidget;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: showBackArrow || showBackGroundColor ? 0 :  20.w, right: 0.w, top: 0.h),
      child: AppBar(
        backgroundColor: showBackGroundColor ? bgColor : DColors.white,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => context.pop(), icon: Icon(Iconsax.arrow_left, color: arrowBackColor ? DColors.white : DColors.black))
            :  leadingWidget,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
