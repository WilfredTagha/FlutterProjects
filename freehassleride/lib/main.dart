import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freehassleride/bloc/home_bloc.dart';

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
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  bool show = true;

  void _incrementCounter() {
    setState(() {
      show = !show;
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      show = true;
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is HomeHideNavBar) {}
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              IconButton(
                onPressed: () {
                  homeBloc.add(ExpandButtonClicked());
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  homeBloc.add(RetractButtonClicked());
                },
                icon: Icon(Icons.remove),
              )
            ],
          ),
          body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Number of Times',
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              show
                  ? Positioned(
                      top: 100,
                      right: 0,
                      child: Column(
                        children: [
                          FloatingActionButton(
                            onPressed: _incrementCounter,
                            child: Text(
                              ">",
                              style: TextStyle(
                                  color: Theme.of(context).cardColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 500,
                            width: 80,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    )
                  : Positioned(
                      bottom: MediaQuery.of(context).size.height / 2 - 80,
                      right: 0,
                      child: FloatingActionButton(
                        tooltip: "smallone",
                        onPressed: _incrementCounter,
                        child: const Icon(Icons.add),
                      ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
      listenWhen: (previous, current) => current is HomeInitial,
      buildWhen: (previous, current) => current is! HomeInitial,
    );
  }
}
