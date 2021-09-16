import 'dart:async';

import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/styles/stockCard.dart';

class ProductCard extends StatefulWidget {
  final ProductsModel? product;
  const ProductCard({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double opacityLevel = 0;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
          milliseconds: 500,
        ), () {
      setState(() {
        opacityLevel = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: opacityLevel,
        duration: Duration(
          milliseconds: 500,
        ),
        child: Container(
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
        ));
  }
}
