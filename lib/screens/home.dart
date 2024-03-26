import 'package:counter_app_with_bloc/bloc/bloc.dart';
import 'package:counter_app_with_bloc/bloc/event.dart';
import 'package:counter_app_with_bloc/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text('Counter App'),
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc,CounterState>(
              builder: (context, State){
                return Text('${State.counterValue}');

              }
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         context.read<CounterBloc>().add(IncrementEvent());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
