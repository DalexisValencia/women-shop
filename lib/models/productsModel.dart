import 'package:flutter/cupertino.dart';
import 'package:women_shop/models/typesModel.dart';

class ProductsModel {
  final String name;
  final TypesModel type;
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
