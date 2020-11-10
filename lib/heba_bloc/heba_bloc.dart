import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:meta/meta.dart';

part 'heba_event.dart';
part 'heba_state.dart';

class HebaBloc extends Bloc<HebaEvent, HebaState> {
  HebaBloc() : super(HebaInitial());

  @override
  Stream<HebaState> mapEventToState(
    HebaEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is HebaEmailButtonClickedEvent)
      yield HebaEmailLoadState();
    else if (event is HebaPhoneButtonClickedEvent)
      yield HebaPhoneLoadState();
    else if (event is HebaBackButtonClickedEvent)
      yield HebaInitial();
  }
}
