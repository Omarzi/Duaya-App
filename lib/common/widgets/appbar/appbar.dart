import 'package:duaya_app/common/managers/language/language_cubit.dart';
import 'package:duaya_app/utils/device/device_utility.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/exports.dart';

class OAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.centerTitle = false,
     this.leadingWidget,
    this.actions,
    // this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final bool centerTitle;
  // final IconData? leadingIcon;
  final List<Widget>? actions;
  // final VoidCallback? leadingOnPressed;
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    // bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;

    return Padding(
      padding: EdgeInsets.only(left: showBackArrow ? 0 : 20.w, right:  showBackArrow ? 20 : 0.w),
      child: AppBar(
          // flexibleSpace: Container(
          //   decoration: showBackArrow ? BoxDecoration() : const BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [Color(0xFF2ED3C1), Color(0xFF33B4E5)],
          //       begin: Alignment.centerLeft,
          //       end: Alignment.centerRight,
          //     ),
          //   ),
          // ),
        // backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => context.pop(), icon: Icon(Iconsax.arrow_left))
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
