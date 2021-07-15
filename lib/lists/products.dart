import 'package:flutter/material.dart';
import 'package:women_shop/lists/categories.dart';
import 'package:women_shop/models/productsModel.dart';

List<ProductsModel> products = [
  ProductsModel(
    name: 'Slim Fit Shirt',
    type: categories[1],
    image: '',
    loadedColor: Colors.red,
    price: '50.00',
  ),
  ProductsModel(
    name: 'Crop Wrap tee',
    type: categories[2],
    image: '',
    loadedColor: Colors.blue,
    price: '80.00',
  ),
  ProductsModel(
    name: 'Short Sleeve Top',
    type: categories[3],
    image: '',
    loadedColor: Colors.blue,
    price: '50.00',
  ),
  ProductsModel(
    name: 'Long fitted shirt',
    type: categories[4],
    image: '',
    loadedColor: Colors.blue,
    price: '70.00',
  ),
];
