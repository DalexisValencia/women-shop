import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/stock/product/product__openContainer.dart';

class ScrollBehaviorWidget extends StatefulWidget {
  const ScrollBehaviorWidget({
    Key? key,
    required this.onScrollChange,
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
        return false;
      },
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (BuildContext context, state) {
          List<ProductsModel> products = state.props[0] as List<ProductsModel>;
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
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
