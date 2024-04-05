import 'package:basketball_basic_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState(),);
  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamIncrement({required String teamName, required int bottomNumber}) {
    if (teamName == 'A') {
      teamAPoint += bottomNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoint += bottomNumber;
      emit(CounterBIncrementState());
    }
  }
  void reset() {
     teamAPoint = 0;
     teamBPoint = 0;
     emit(CounterAIncrementState());
     emit(CounterBIncrementState());
  }

}
