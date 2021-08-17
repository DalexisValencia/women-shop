import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';

class ProductCard extends StatelessWidget {
  final ProductsModel product;
  const ProductCard({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(product);
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
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  // "name",
                  product.name,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // "\$ 50.00",
                      "\$${product.price}",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
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
