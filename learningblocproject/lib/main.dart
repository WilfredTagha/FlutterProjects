// // This is a stream that yields a number after every three seconds
// Stream<int> boatStream() async* {
//   for (int i = 1; i <= 10; i++) {
//     print("SENT boat no. " + i.toString());
//     await Future.delayed(Duration(seconds: 3));
//     yield i;
//   }
// }

// //This is the main function that calls the boatStream and listens to the data being sent
// void main(List<String> args) async {
//   Stream<int> stream = boatStream();
//   stream.listen((recieved) {
//     print("RECIEVED boat no. " + recieved.toString());
//   });
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningblocproject/presentation/screens/second_screen.dart';
import 'package:learningblocproject/presentation/screens/third_screen.dart';
import 'logic/cubit/counter_cubit.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //no longer needed t
      // home: const HomeScreen(
      //   title: 'Flutter Demo Home Page',
      //   color: Colors.orange,
      // ),
      routes: {
        '/': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const HomeScreen(title: "Second", color: Colors.blue),
            ),
        '/second': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const SecondScreen(title: "Second", color: Colors.red),
            ),
        '/third': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const ThirdScreen(title: "Third", color: Colors.green),
            ),
      },
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
