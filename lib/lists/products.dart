import 'package:flutter/material.dart';
import 'package:women_shop/lists/categories.dart';
import 'package:women_shop/models/productsModel.dart';

List<ProductsModel> products = [
  ProductsModel(
    name: 'Slim Fit Shirt with a longer title',
    type: categories[1],
    image: '',
    loadedColor: Colors.red,
    price: '50.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-1.1.jpg',
        url: 'images/women-1.1.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-1.2.jpg',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-1.3.jpg',
        url: 'images/women-2.1.jpg',
      ),
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
    name: 'Slim Shirt',
    type: categories[1],
    image: '',
    loadedColor: Colors.red,
    price: '70.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-2.3.jpg',
        url: 'images/women-2.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-2.1.jpg',
        url: 'images/women-2.1.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-2.2.jpg',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    ],
    rating: 4,
    colors: [
      'Orange',
      'Alice blue',
      'Purple',
    ],
  ),
  ProductsModel(
    name: 'Slim Shirt',
    type: categories[1],
    image: '',
    loadedColor: Colors.red,
    price: '40.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.1.jpg',
        url: 'images/women-3.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.3.jpg',
        url: 'images/women-3.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-3.2.jpg',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    ],
    rating: 4,
    colors: [
      'Darkred',
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
        thumbnail: 'images/women-4.1.jpg',
        url: 'images/women-4.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-4.3.jpg',
        url: 'images/women-4.3.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.3.jpg',
        url: 'images/women-3.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-4.2.jpg',
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
    name: 'Winter Cap',
    type: categories[2],
    image: '',
    loadedColor: Colors.blue,
    price: '10.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, second',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-5.1.jpg',
        url: 'images/women-5.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-5.3.jpg',
        url: 'images/women-5.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-5.3.jpg',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    ],
    rating: 3,
    colors: [
      'Black',
      'Grey',
      'Dark blue',
      'Dark green',
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
        thumbnail: 'images/women-2.2.jpg',
        url: 'images/women-2.2.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.2.jpg',
        url: 'images/women-3.2.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-4.2.jpg',
        url: 'images/women-4.2.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-5.2.jpg',
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
    name: 'Long Sleeve Shirt',
    type: categories[3],
    image: '',
    loadedColor: Colors.blue,
    price: '50.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, third',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-4.2.jpg',
        url: 'images/women-4.2.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-2.1.jpg',
        url: 'images/women-2.1.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-2.3.jpg',
        url:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    ],
    rating: 2,
    colors: [
      'Black',
      'White',
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
        thumbnail: 'images/women-5.3.jpg',
        url: 'images/women-5.2.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-5.1.jpg',
        url: 'images/women-5.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-4.2.jpg',
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
    name: 'Long slim shirt',
    type: categories[4],
    image: '',
    loadedColor: Colors.blue,
    price: '80.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, fourth',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.1.jpg',
        url: 'images/women-3.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-2.3.jpg',
        url: 'images/women-2.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-1.2.jpg',
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
    name: 'Short shirt',
    type: categories[4],
    image: '',
    loadedColor: Colors.blue,
    price: '50.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, fourth',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-5.2.jpg',
        url: 'images/women-5.2.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-5.1.jpg',
        url: 'images/women-5.1.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-2.3.jpg',
        url: 'images/women-2.3.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-2.2.jpg',
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
    type: categories[2],
    image: '',
    loadedColor: Colors.blue,
    price: '70.00',
    description:
        'This a beautiful women classic jacket for you daily casual look and a party time, fourth',
    gallery: [
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.3.jpg',
        url: 'images/women-3.3.jpg',
      ),
      ProductGallery(
        type: 'img',
        thumbnail: 'images/women-3.2.jpg',
        url: 'images/women-3.2.jpg',
      ),
      ProductGallery(
        type: 'video',
        thumbnail: 'images/women-5.1.jpg',
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
