import 'dart:async';

import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/styles/stockCard.dart';

class ProductCard extends StatefulWidget {
  final ProductsModel? product;
  final int? index;
  const ProductCard({
    Key? key,
    this.product,
    this.index,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  void initState() {
    // print("${widget.index.toString()} index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: Center(
                child: Text("card"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "Fashion Label",
                  widget.product!.type!.name!,
                  style: StockCardTextStyle.cardTag(context),
                ),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    // "name",
                    widget.product!.name!.length >= 34
                        ? widget.product!.name!.replaceRange(
                            20,
                            widget.product!.name!.length,
                            '...',
                          )
                        : widget.product!.name!,
                    style: StockCardTextStyle.cardName(context),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // "\$ 50.00",
                      "\$${widget.product!.price!}",
                      style: StockCardTextStyle.cardPrice(context),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 18,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
