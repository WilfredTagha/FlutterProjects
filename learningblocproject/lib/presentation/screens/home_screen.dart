import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningblocproject/logic/cubit/counter_cubit.dart';
import 'package:learningblocproject/main.dart';
import 'package:learningblocproject/presentation/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;
  final Color color;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocListener<CounterCubit, CounterState>(
        listener: ((context, state) {
          if (state.wasIncremented == true) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("Incremented")));
          } else if (state.wasIncremented == false) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("Decremented")));
          }
        }),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  if (state.count < 0) {
                    return Text(
                      "NEGATIVE  ${state.count}",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  if (state.count % 2 == 0) {
                    return Text(
                      "EVEN  ${state.count}",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  if (state.count == 5) {
                    return Text(
                      "WOW  ${state.count}",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  return Text(
                    state.count.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    heroTag: "one",
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ), //
                  FloatingActionButton(
                    heroTag: "two",
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ), //
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: widget.color,
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: const Text('Go to Second Screen'),
              ),
              MaterialButton(
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.of(context).pushNamed('/third');
                },
                child: const Text('Go to Third Screen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
