import 'package:flutter_test/flutter_test.dart';
import 'package:learningblocproject/cubit/counter_cubit.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit = CounterCubit();
      counterCubit.close();
    });

    test('The initial state for the CounterCubit is Counter(counterValue:0)',
        () {
      counterCubit = CounterCubit();
      expect(counterCubit.state, CounterState(count: 0));
    });
  });
}
