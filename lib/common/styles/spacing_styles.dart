import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/exports.dart';

class DSpacingStyle {
  static final EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DSizes.appBarHeight,
    bottom: DSizes.defaultSpace,
    right: DSizes.defaultSpace,
    left: DSizes.defaultSpace,
  );
}
