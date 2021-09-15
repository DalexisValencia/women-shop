import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class DetailsTextStyles {
  static name(BuildContext context) {
    return Theme.of(context).textTheme.headline6!.copyWith(
          fontWeight: FontWeight.w700,
          color: secondaryColor,
          fontFamily: 'Helvetica',
          fontSize: 21,
        );
  }

  static price(BuildContext context) {
    return Theme.of(context).textTheme.headline6!.copyWith(
          fontWeight: FontWeight.w700,
          color: secondaryColor,
          fontSize: 18,
          fontFamily: 'Helvetica',
        );
  }

  static addToFav(BuildContext context) {
    return Theme.of(context).textTheme.headline6!.copyWith(
          fontWeight: FontWeight.w600,
          color: secondaryColor,
          fontSize: 17,
          fontFamily: 'Helvetica',
        );
  }

  static dropDownColorKey(context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontFamily: 'Helvetica',
          color: secondaryColor,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        );
  }

  static dropDownColorVal(context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontFamily: 'Helvetica',
          color: secondaryColor,
          fontSize: 17,
        );
  }

  static dropDownSize(context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontFamily: 'Helvetica',
          color: secondaryColor,
          fontSize: 17,
        );
  }

  static descriptionTitle(BuildContext context) {
    return Theme.of(context).textTheme.button!.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: 'Helvetica',
          color: secondaryColor,
        );
  }

  static description(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2!.copyWith(
          fontSize: 13.6,
          fontFamily: 'Helvetica',
          color: secondaryColor,
        );
  }

  static rating(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.w400,
          color: secondaryColor,
          fontFamily: 'Helvetica',
        );
  }

  static addCart(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          color: tertiaryColor,
          fontFamily: 'Helvetica',
        );
  }

  static playAndPause(context) {
    return Theme.of(context).textTheme.bodyText2!.copyWith(
          color: Colors.white,
          fontFamily: 'Helvetica',
          // fontSize: 16,
        );
  }
}
