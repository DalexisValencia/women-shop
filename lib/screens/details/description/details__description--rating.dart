import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/styles/detailsText.dart';

class RatingDetails extends StatelessWidget {
  final ProductsModel product;
  const RatingDetails({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Text(
              "Description",
              style: DetailsTextStyles.descriptionTitle(context),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "23 Ratings",
                    textAlign: TextAlign.center,
                    style: DetailsTextStyles.rating(context),
                  ),
                ),
                SizedBox(width: 8),
                Builder(
                  builder: (BuildContext context) {
                    List<Widget> starts = [];
                    for (var i = 0; i < 5; i++) {
                      starts.add(
                        Icon(
                          Icons.star_rate_rounded,
                          size: 15,
                          color:
                              i < product.rating ? Colors.black : Colors.grey,
                        ),
                      );
                    }
                    return Row(
                      children: starts,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
