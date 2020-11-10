import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'alsam_event.dart';
part 'alsam_state.dart';

class AlsamBloc extends Bloc<AlsamEvent, AlsamState> {
  AlsamBloc() : super(AlsamInitial());

  @override
  Stream<AlsamState> mapEventToState(
    AlsamEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AlsamEmailButtonClickedEvent)
      yield AlsamEmailLoadState();
    else if (event is AlsamPhoneButtonClickedEvent) yield AlsamPhoneLoadState();
    else if(event is BackButtonClickedEvent) yield AlsamInitial();
  }
}