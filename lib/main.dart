import 'package:counter_app_with_bloc/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const MaterialApp(
      home: MyHomePage(),
    ))
    ;
  }
}
