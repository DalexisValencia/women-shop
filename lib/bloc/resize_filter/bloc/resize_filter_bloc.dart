import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'resize_filter_event.dart';
part 'resize_filter_state.dart';

class ResizeFilterBloc extends Bloc<ResizeFilterEvent, ResizeFilterState> {
  ResizeFilterBloc() : super(ResizeFilterInitial(false));

  @override
  Stream<ResizeFilterState> mapEventToState(
    ResizeFilterEvent event,
  ) async* {
    if (event is ResizeFilterExpanded) {
      yield ResizeFilterExpandedFitted(event.expanded);
    }
  }
}
