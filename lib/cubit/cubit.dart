// import 'package:bloc/bloc.dart';
// import 'package:up_course2/cubit/state.dart';
//
//
// class CounterCubit extends Cubit<CounterState> {
//     CounterCubit() : super(IncrecmentState());
//     int counter=0;
//   void increment(){
//     counter++;
//     emit(IncrecmentState());
//   }
//   void decrement(){
//     counter--;
//     emit(DecrementState());
//   }
//
//
// }
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
