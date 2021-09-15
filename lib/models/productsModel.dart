import 'package:flutter/cupertino.dart';
import 'package:women_shop/models/CategoriesModel.dart';

class ProductsModel {
  final String? name;
  final CategoriesModel? type;
  final String? image;
  final Color? loadedColor;
  final String? price;
  final String? description;
  final List<ProductGallery>? gallery;
  final int? rating;
  final List<String>? colors;
  ProductsModel({
    this.name,
    this.type,
    this.image,
    this.loadedColor,
    this.price,
    this.description,
    this.gallery,
    this.rating,
    this.colors,
  });
}

class ProductGallery {
  final String? type;
  final String? thumbnail;
  final String? url;

  ProductGallery({
    this.type,
    this.thumbnail,
    this.url,
  });
}
