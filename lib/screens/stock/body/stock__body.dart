import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/screens/stock/dropdown/stock__filter.dart';
import 'package:women_shop/screens/stock/body/stock__body--scrollBehavior.dart';

class StockBody extends StatefulWidget {
  const StockBody({Key? key}) : super(key: key);

  @override
  _StockBodyState createState() => _StockBodyState();
}

class _StockBodyState extends State<StockBody> {
  double filterContainerSize = 100; // min 60 max 100
  void changeHeight(double value) {
    setState(() {
      filterContainerSize = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (BuildContext context, CategoriesState state) {
          // CategoriesState stateModel = state;
          // print(stateModel);
          return Column(
            children: [
              StockFilter(
                height: filterContainerSize,
              ),
              Expanded(
                child: ScrollBehaviorWidget(
                  onScrollChange: (double value) {
                    if (value > 100) {
                      changeHeight(80);
                    } else if (value < 100) {
                      changeHeight(100);
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
