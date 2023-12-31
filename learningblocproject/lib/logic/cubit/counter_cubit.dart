import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(count: 0));
  void increment() {
    emit(CounterState(count: state.count + 1, wasIncremented: true));
  }

  void decrement() {
    emit(CounterState(count: state.count - 1, wasIncremented: false));
  }
}
