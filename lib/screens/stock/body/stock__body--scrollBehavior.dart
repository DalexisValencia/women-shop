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

class _ScrollBehaviorWidgetState extends State<ScrollBehaviorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _staggeredAnimation;
  ScrollController _controllerScrollGirdView = new ScrollController();
  final List<Interval> _itemSlideIntervals = [];
  static const _initialDelayTime = Duration(milliseconds: 500);
  static const _itemCardTime = Duration(milliseconds: 800);
  static const _staggerTime = Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _staggeredAnimation = AnimationController(
      vsync: this,
      reverseDuration: Duration(milliseconds: 0),
      // duration: Duration(milliseconds: 0),
    );
    _controllerScrollGirdView
      ..addListener(() {
        // print("listener");
        // print(_controllerScrollGirdView.position.pixels);
        // widget.onScrollChange(_controllerScrollGirdView.position.pixels);
      });
  }

  void _prepateCardAnimation(int totalItems) {
    _staggeredAnimation..reverse();
    final _animationDuration = _initialDelayTime + (_itemCardTime * totalItems);

    _createAnimationIntervals(totalItems, _animationDuration);
    _staggeredAnimation.duration = _animationDuration;
    _staggeredAnimation..forward();
  }

  void _createAnimationIntervals(int items, _animationDuration) {
    for (var i = 0; i < items; i++) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemCardTime;

      _itemSlideIntervals.add(Interval(
        startTime.inMilliseconds / _animationDuration.inMilliseconds,
        endTime.inMilliseconds / _animationDuration.inMilliseconds,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (BuildContext context, state) {
        List<ProductsModel> products = state.props[0] as List<ProductsModel>;
        _prepateCardAnimation(products.length);
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
                      (item) => AnimatedBuilder(
                        animation: _staggeredAnimation,
                        builder: (BuildContext context, child) {
                          final animatioPercent = Curves.easeOut.transform(
                            _itemSlideIntervals[item.key]
                                .transform(_staggeredAnimation.value),
                          );
                          final opacity = animatioPercent;
                          final slideDistance = (1.0 - animatioPercent) * 150;

                          return Opacity(
                            opacity: opacity,
                            child: Transform.translate(
                              offset: Offset(slideDistance, 0),
                              child: child,
                            ),
                          );
                        },
                        child: OpenContainerProductCard(
                          index: item.key,
                          product: item.value,
                        ),
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
