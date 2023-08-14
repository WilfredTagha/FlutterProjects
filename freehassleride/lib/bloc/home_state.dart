part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeHideNavBar extends HomeState {}

class HomeShowNavBar extends HomeState {}

class CounterState extends HomeState {
  final int counter;
  final bool show;
  CounterState(this.counter, this.show);
}
