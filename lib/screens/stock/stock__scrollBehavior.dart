import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/details/details.dart';

class ScrollBehaviorWidget extends StatefulWidget {
  const ScrollBehaviorWidget({
    Key key,
    this.onScrollChange,
  }) : super(key: key);
  final Function onScrollChange;

  @override
  _ScrollBehaviorWidgetState createState() => _ScrollBehaviorWidgetState();
}

class _ScrollBehaviorWidgetState extends State<ScrollBehaviorWidget> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        // if (scrollNotification is ScrollStartNotification) {}
        if (scrollNotification is ScrollUpdateNotification) {
          // scrollNotification.metrics.extentAfter
          // print(scrollNotification.metrics.pixels);
          widget.onScrollChange(scrollNotification.metrics.pixels);
        }
        // if (scrollNotification is ScrollEndNotification) {}
        return;
      },
      // child: SingleChildScrollView(
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (BuildContext context, state) {
          List<ProductsModel> products = state.props[0];
          // print(products);
          return products.length == 0
              ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_alert_rounded,
                        size: 70,
                        color: Colors.grey[400],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "NO HAY RESULTADOS",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.grey[500],
                            ),
                      ),
                    ],
                  ),
                )
              : GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 12,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  mainAxisSpacing: MediaQuery.of(context).size.height * 0.02,
                  crossAxisSpacing:
                      MediaQuery.of(context).size.width * pHorizontally,
                  // children: List.generate(
                  //   10,
                  //   (index) => ProductCard(),
                  // ),
                  children: products
                      .map(
                        (item) => OpenContainerProductCard(
                          product: item,
                        ),
                      )
                      .toList(),
                );
        },
      ),
    );
  }
}

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
        return ProductCard();
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

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

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
                  "Fashion Label",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "name",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 50.00",
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
