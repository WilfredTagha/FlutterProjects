import 'dart:async';

import 'package:bloc/bloc.dart';

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);
//   void decrement() => emit(state - 1);
// }

// void main(List<String> args) {
//   final cubit = CounterCubit();

//   print(cubit.state);
//   cubit.increment();
//   cubit.increment();
//   print(cubit.state);
//   cubit.decrement();
//   print(cubit.state);
//   cubit.close();
// }
// enum CounterEvent { increment, decrement }

// class CounterBloc extends Bloc<CounterEvent, int> {
//   CounterBloc() : super(0);

//   @override
//   Stream<int> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.increment:
//         yield state + 1;
//         break;
//       case CounterEvent.decrement:
//         yield state - 1;
//         break;
//     }
//   }
// }

// void main(List<String> args) async {
//   final bloc = CounterBloc();
//   //final StreamSubscription = bloc.listen(print);

//   bloc.add(CounterEvent.increment);
//   await Future.delayed(Duration.zero);

// }
