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
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: '',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    ],
    rating: 4,
    colors: [
      'Red',
      'Blue',
      'Alice blue',
      'Purple',
    ],
  ),
  ProductsModel(
    name: 'Crop Wrap tee',
    type: categories[2],
    image: '',
    loadedColor: Colors.blue,
    price: '80.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, second',
    gallery: [
      ProductGallery(
        type: 'img',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: '',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    ],
    rating: 3,
    colors: [
      'Black',
      'Black red',
      'Black blue',
      'Black green',
    ],
  ),
  ProductsModel(
    name: 'Short Sleeve Top',
    type: categories[3],
    image: '',
    loadedColor: Colors.blue,
    price: '50.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, third',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: '',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    ],
    rating: 2,
    colors: [
      'black',
      'white',
    ],
  ),
  ProductsModel(
    name: 'Long fitted shirt',
    type: categories[4],
    image: '',
    loadedColor: Colors.blue,
    price: '70.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, fourth',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: '',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    ],
    rating: 4,
    colors: [
      'Yellow',
      'Pink',
      'Green',
    ],
  ),
  ProductsModel(
    name: 'Long fitted shirt',
    type: categories[4],
    image: '',
    loadedColor: Colors.blue,
    price: '70.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, fourth',
    gallery: [
      ProductGallery(
        type: 'img',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: '',
        url: '',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: '',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    ],
    rating: 3,
    colors: [
      'Yellow',
      'Pink',
      'Green',
    ],
  ),
];
