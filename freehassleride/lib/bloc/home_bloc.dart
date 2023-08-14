import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(CounterState(0, true)) {
    on<ExpandButtonClicked>(expandButtonClicked);
    on<RetractButtonClicked>(retractButtonClicked);
    on<ActionButoonClicked>(actionButtonClicked);
  }

  FutureOr<void> expandButtonClicked(
      ExpandButtonClicked event, Emitter<HomeState> emit) {
    print("It has happend again");
    emit(HomeShowNavBar());
  }

  FutureOr<void> retractButtonClicked(
      RetractButtonClicked event, Emitter<HomeState> emit) {
    emit(HomeHideNavBar());
  }

  FutureOr<void> actionButtonClicked(
      ActionButoonClicked event, Emitter<HomeState> emit) {
    int currentCounter = (state as CounterState).counter;
    print("Counter got incremented");
    emit(CounterState(currentCounter + 1, !(state as CounterState).show));
  }
}
