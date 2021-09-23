part of 'resize_filter_bloc.dart';

@immutable
abstract class ResizeFilterEvent {
  const ResizeFilterEvent();
  List<Object> get props => [];
}

class ResizeFilterExpanded extends ResizeFilterEvent {
  final bool expanded;
  ResizeFilterExpanded(this.expanded);

  @override
  List<Object> get props => [expanded];
}
