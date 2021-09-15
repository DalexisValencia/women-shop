import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class StockCardTextStyle {
  static TextStyle cardTag(BuildContext context) {
    return Theme.of(context).textTheme.caption!.copyWith(
          color: secondaryColor.withOpacity(0.5),
          fontFamily: 'Helvetica',
        );
  }

  static TextStyle cardName(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14.3,
          color: secondaryColor,
          fontFamily: 'Helvetica',
        );
  }

  static TextStyle cardPrice(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 13.7,
          color: secondaryColor,
          fontFamily: 'Helvetica',
        );
  }
}
