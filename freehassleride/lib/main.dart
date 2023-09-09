import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freehassleride/bloc/home_bloc.dart';
import 'package:freehassleride/ui/screens/log_in.dart';
import 'package:freehassleride/ui/screens/otp_one.dart';
import 'package:freehassleride/ui/screens/otp_two.dart';
import 'package:freehassleride/ui/screens/sign_up.dart';

import 'ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.orange,
          ),
      home: const LogIn(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("how are you "),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is CounterState) {
              return Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            homeBloc.add(ActionButoonClicked());
                            // homeBloc.add(ExpandButtonClicked());
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            'Counter: ${state.counter}',
                            style: TextStyle(fontSize: 30),
                          )),
                        ),
                      ],
                    ),
                  ),
                  state.show
                      ? Positioned(
                          top: 100,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  ">",
                                  style: TextStyle(
                                      color: Theme.of(context).cardColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: 300,
                                width: 80,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                        )
                      : Positioned(
                          bottom: MediaQuery.of(context).size.height / 2 - 80,
                          right: 0,
                          child: Container(
                            child: const Icon(Icons.add),
                          ))
                ],
              );
            }

            return Container();
          },
        ),
      ),
    );
    // return BlocConsumer<HomeBloc, HomeState>(
    //   bloc: homeBloc,
    //   listener: (context, state) {
    //     // TODO: implement listener
    //   },
    //   builder: (context, state) {
    //     if (state is HomeHideNavBar)
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text(widget.title),
    //         actions: [
    //           IconButton(
    //             onPressed: () {
    //               homeBloc.add(ExpandButtonClicked());
    //             },
    //             icon: Icon(Icons.add),
    //           ),
    //           IconButton(
    //             onPressed: () {
    //               homeBloc.add(RetractButtonClicked());
    //             },
    //             icon: Icon(Icons.remove),
    //           )
    //         ],
    //       ),
    //       body: Stack(
    //         children: [
    //           Center(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 const Text(
    //                   'Number of Times',
    //                 ),
    //                 Text(
    //                   '$_counter',
    //                   style: Theme.of(context).textTheme.headline4,
    //                 ),
    //               ],
    //             ),
    //           ),

    //         ],
    //       ),
    //       floatingActionButton: FloatingActionButton(
    //         onPressed: _incrementCounter,
    //         tooltip: 'Increment',
    //         child: const Icon(Icons.add),
    //       ), // This trailing comma makes auto-formatting nicer for build methods.
    //     );
    //   },
    //   listenWhen: (previous, current) => current is HomeInitial,
    //   buildWhen: (previous, current) => current is! HomeInitial,
    // );
  }
}
