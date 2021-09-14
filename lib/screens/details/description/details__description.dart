import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/details/description/details__description--rating.dart';
import 'package:women_shop/screens/details/description/dropdown/description_dropdownWrapper.dart';
import 'package:women_shop/styles/detailsText.dart';
// import 'package:women_shop/constants/conts.dart';

class DetailsDescription extends StatelessWidget {
  final ProductsModel product;
  const DetailsDescription({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: DetailsTextStyles.name(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: DetailsTextStyles.price(context),
              ),
              MaterialButton(
                child: Row(
                  children: [
                    Text(
                      "Save",
                      style: DetailsTextStyles.addToFav(context),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.favorite_border_outlined),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          DetailsDescriptionSelector(),
          SizedBox(
            height: 12,
          ),
          RatingDetails(product: product),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
              ),
            ),
            child: Text(
              product.description,
              // "This a beautiful women classic jacket for you daily casual look and a party time",
              style: DetailsTextStyles.description(context),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(3, 6), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(
              top: 23,
            ),
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              elevation: 2,
              color: Colors.grey[850],
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              onPressed: () {},
              child: Text(
                "Add To Car",
                style: DetailsTextStyles.addCart(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
