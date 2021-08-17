import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/details/details.dart';
import 'package:women_shop/screens/stock/product/product__card.dart';

class OpenContainerProductCard extends StatelessWidget {
  final ProductsModel product;
  const OpenContainerProductCard({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      transitionDuration: Duration(
        milliseconds: 500,
      ),
      closedColor: Colors.white, // Colors.red
      openColor: Colors.white,
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (_, openContainer) {
        return ProductCard(
          product: product,
        );
      },
      openBuilder: (_, closeContainer) {
        // closeContainer used this to close container
        return DetailsScreen(
          close: closeContainer,
          product: product,
        );
      },
    );
  }
}