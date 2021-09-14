import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class AppBarTextStyle {
  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.headline5.copyWith(
          color: secondaryColor,
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle itemsFound(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
          color: secondaryColor,
          fontWeight: FontWeight.w300,
          // fontSize: 14,
          fontFamily: 'Helvetica',
        );
  }
}

class AppBarTextFilter {
  static titleSelection(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: secondaryColor,
          fontFamily: 'Helvetica',
        );
  }

  static title(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'Helvetica',
        );
  }
}
