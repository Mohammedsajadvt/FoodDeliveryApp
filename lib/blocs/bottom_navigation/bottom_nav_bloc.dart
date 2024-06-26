import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavLoaded(tabIndex: 0)) {
    on<TabChange>((event, emit) {
      emit(BottomNavLoaded(tabIndex: event.tabIndex));
    });
  }
}
