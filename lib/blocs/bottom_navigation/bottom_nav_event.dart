part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends BottomNavEvent {
  final int tabIndex;

  const TabChange({required this.tabIndex});

  @override
  List<Object> get props => [tabIndex];
}
