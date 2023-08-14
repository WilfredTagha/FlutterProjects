part of 'home_bloc.dart';

@immutable
class HomeEvent {}

class HomeActionEvent extends HomeEvent {}

class ActionButoonClicked extends HomeEvent {}

class ExpandButtonClicked extends HomeActionEvent {}

class RetractButtonClicked extends HomeActionEvent {}
