part of 'bottom_nav_bloc.dart';

abstract class BottomNavState extends Equatable {
  final int tabIndex;

  const BottomNavState({required this.tabIndex});

  @override
  List<Object> get props => [tabIndex];
}

class BottomNavLoaded extends BottomNavState {
  const BottomNavLoaded({required int tabIndex}) : super(tabIndex: tabIndex);
}
