import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/details/details.dart';
import 'package:women_shop/screens/stock/product/product__card.dart';

class OpenContainerProductCard extends StatelessWidget {
  final ProductsModel? product;
  final int? index;

  const OpenContainerProductCard({
    Key? key,
    this.product,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      transitionDuration: Duration(
        milliseconds: 500,
      ),
      closedColor: Colors.white,
      openColor: Colors.white,
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (_, openContainer) {
        return ProductCard(
          index: index,
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
