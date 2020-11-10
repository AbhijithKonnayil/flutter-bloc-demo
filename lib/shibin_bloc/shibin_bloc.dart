import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shibin_event.dart';
part 'shibin_state.dart';

class ShibinBloc extends Bloc<ShibinEvent, ShibinState> {
  ShibinBloc() : super(ShibinInitial());

  @override
  Stream<ShibinState> mapEventToState(
    ShibinEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is ShibinEmailButtonClickedEvent)
      yield ShibinEmailLoadState();
    else if (event is ShibinPhoneButtonClickedEvent) yield ShibinPhoneLoadState();
  }
}
