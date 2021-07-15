import 'package:flutter/cupertino.dart';
import 'package:women_shop/models/CategoriesModel.dart';

class ProductsModel {
  final String name;
  final CategoriesModel type;
  final String image;
  final Color loadedColor;
  final String price;
  ProductsModel({
    this.name,
    this.type,
    this.image,
    this.loadedColor,
    this.price,
  });
}
