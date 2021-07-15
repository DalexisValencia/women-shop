import 'package:flutter/material.dart';
import 'package:women_shop/lists/types.dart';
import 'package:women_shop/models/productsModel.dart';

List<ProductsModel> products = [
  ProductsModel(
    name: 'Slim Fit Shirt',
    type: types[0],
    image: '',
    loadedColor: Colors.red,
    price: '50.00',
  ),
  ProductsModel(
    name: 'Crop Wrap tee',
    type: types[1],
    image: '',
    loadedColor: Colors.blue,
    price: '80.00',
  ),
  ProductsModel(
    name: 'Short Sleeve Top',
    type: types[2],
    image: '',
    loadedColor: Colors.blue,
    price: '50.00',
  ),
  ProductsModel(
    name: 'Long fitted shirt',
    type: types[3],
    image: '',
    loadedColor: Colors.blue,
    price: '70.00',
  ),
];
