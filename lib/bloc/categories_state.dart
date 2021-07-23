part of 'categories_bloc.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {
  final String category;
  CategoriesInitial(this.category);

  @override
  String toString() => 'CategoriesInitial { category: $category }';
}
