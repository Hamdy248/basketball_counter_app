
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:basketball_counter_app/cubit.dart/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<CounterState>
{
  
  int teamAPoints = 0;
  int teamBPoints = 0;

  countercubit() : super(CounterAIncrementState());
  
  void CounterIncrement({required String team,required int buttonNumber})
  {
  if(team == 'A'){
     teamAPoints +=buttonNumber;
   emit(CounterAIncrementState());
  }else{
     teamBPoints +=buttonNumber;
   emit(CounterBIncrementState());
  }
  }

  

}