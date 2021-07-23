part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent {
  const CategoriesEvent();
  List<Object> get props => [];
}

class ChangeCategory extends CategoriesEvent {
  final String category;
  ChangeCategory(this.category);

  @override
  List<Object> get props => [category];
}
