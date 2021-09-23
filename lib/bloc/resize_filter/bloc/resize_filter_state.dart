part of 'resize_filter_bloc.dart';

@immutable
abstract class ResizeFilterState {
  List<Object> get props => [];
}

class ResizeFilterInitial extends ResizeFilterState {
  final bool expanded;
  ResizeFilterInitial(this.expanded);

  @override
  List<Object> get props => [expanded];

  @override
  String toString() => 'ResizeFilterInitial { expanded: $expanded }';
}

class ResizeFilterExpandedFitted extends ResizeFilterState {
  final bool expanded;
  ResizeFilterExpandedFitted(this.expanded);

  @override
  List<Object> get props => [expanded];
}
