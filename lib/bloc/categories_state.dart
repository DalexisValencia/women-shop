part of 'categories_bloc.dart';

@immutable
abstract class CategoriesState {
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {
  final List<ProductsModel> products;
  CategoriesInitial(this.products);

  @override
  List<Object> get props => [products];

  @override
  String toString() => 'CategoriesInitial { category: $products }';
}

class CategoriesFilter extends CategoriesState {
  final List<ProductsModel> products;
  CategoriesFilter(this.products);

  @override
  List<Object> get props => [products];

  @override
  String toString() => 'CategoriesFilter { products: $products }';
}
