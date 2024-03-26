import 'package:counter_app_with_bloc/bloc/event.dart';
import 'package:counter_app_with_bloc/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
 
  CounterBloc(): super(CounterState(counterValue: 0)){
    on<IncrementEvent>((event, emit) {
      emit(CounterState(counterValue: state.counterValue+1));
    });
  }

}