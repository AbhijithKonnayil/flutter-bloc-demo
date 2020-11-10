import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'joseph_event.dart';
part 'joseph_state.dart';

class JosephBloc extends Bloc<JosephEvent, JosephState> {
  JosephBloc() : super(JosephInitial());

  @override
  Stream<JosephState> mapEventToState(
    JosephEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if(event is JosephEmailButtonClickedEvent){
      yield JosephEmailLoadState();
    }else if(event is JosephPhoneButtonClickedEvent){
      yield JosephPhoneLoadState();
    }
  }
}
