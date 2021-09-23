import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/bloc/resize_filter/bloc/resize_filter_bloc.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/screens/stock/product/product__openContainer.dart';

class ScrollBehaviorWidget extends StatefulWidget {
  const ScrollBehaviorWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ScrollBehaviorWidgetState createState() => _ScrollBehaviorWidgetState();
}

class _ScrollBehaviorWidgetState extends State<ScrollBehaviorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _staggeredAnimation;
  ScrollController _controllerScrollGirdView = new ScrollController();
  late ResizeFilterBloc? categoriesinstance;

  @override
  void initState() {
    super.initState();
    categoriesinstance = BlocProvider.of<ResizeFilterBloc>(context);
    _controllerScrollGirdView
      ..addListener(
        () {
          if (_controllerScrollGirdView.position.pixels > 100 &&
              _controllerScrollGirdView.position.pixels < 200) {
            categoriesinstance?.add(ResizeFilterExpanded(true));
          } else if (_controllerScrollGirdView.position.pixels < 100) {
            categoriesinstance?.add(ResizeFilterExpanded(false));
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
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
                controller: _controllerScrollGirdView,
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
                    .asMap()
                    .entries
                    .map(
                      (item) => OpenContainerProductCard(
                        index: item.key,
                        product: item.value,
                      ),
                    )
                    .toList(),
              );
      },
    );
  }

  @override
  void dispose() {
    _staggeredAnimation.dispose();
    super.dispose();
  }
}
