import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:women_shop/lists/products.dart';
import 'package:women_shop/models/productsModel.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial(products));

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is ChangeCategory) {
      String categoryFilterNameLowerCase = event.category.toLowerCase();
      final List<ProductsModel> productsByCategories =
          _filterCategory(categoryFilterNameLowerCase);

      yield CategoriesFilter(productsByCategories);
    }
  }
}

List<ProductsModel> _filterCategory(String category) {
  List<ProductsModel> filterCategory;
  if (category == 'all') {
    filterCategory = products;
  } else {
    filterCategory = products.where((element) {
      return element.type?.name?.toLowerCase() == category;
    }).toList();
  }
  return filterCategory;
}
