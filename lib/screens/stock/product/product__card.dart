import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/styles/stockCard.dart';

class ProductCard extends StatelessWidget {
  final ProductsModel product;
  const ProductCard({
    Key key,
    this.product,
  }) : super(key: key);

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
                  product.type.name,
                  style: StockCardTextStyle.cardTag(context),
                ),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    // "name",
                    product.name.length >= 34
                        ? product.name.replaceRange(
                            20,
                            product.name.length,
                            '...',
                          )
                        : product.name,
                    style: StockCardTextStyle.cardName(context),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // "\$ 50.00",
                      "\$${product.price}",
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
