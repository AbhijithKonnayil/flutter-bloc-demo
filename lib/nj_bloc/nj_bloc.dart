import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nj_event.dart';
part 'nj_state.dart';

class NjBloc extends Bloc<NjEvent, NjState> {
  NjBloc() : super(NjInitial());

  @override
  Stream<NjState> mapEventToState(
    NjEvent event,
  ) async* {
    
    if(event is EmailClickedEvent){
      yield EmailClickedState();
    }
    else if(event is PhoneClickedEvent){
      yield PhoneClickedState();
    }
    else if(event is BackClickedEvent){
      yield NjInitial();
    }
  }
}
