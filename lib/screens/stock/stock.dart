import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:women_shop/bloc/categories_bloc.dart';
import 'package:women_shop/screens/stock/stock__appBar.dart';
import 'package:women_shop/screens/stock/body/stock__body.dart';
import 'package:women_shop/screens/stock/stock__bottomNavBar.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriesBloc(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: StockAppBar(),
        ),
        body: StockBody(),
        bottomNavigationBar: StockBottomNavigationBar(),
      ),
    );
  }
}
