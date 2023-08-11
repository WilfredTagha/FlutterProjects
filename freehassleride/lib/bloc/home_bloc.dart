import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ExpandButtonClicked>(expandButtonClicked);
    on<RetractButtonClicked>(retractButtonClicked);
  }

  FutureOr<void> expandButtonClicked(
      ExpandButtonClicked event, Emitter<HomeState> emit) {
    emit(HomeShowNavBar());
  }

  FutureOr<void> retractButtonClicked(
      RetractButtonClicked event, Emitter<HomeState> emit) {
    emit(HomeHideNavBar());
  }
}
