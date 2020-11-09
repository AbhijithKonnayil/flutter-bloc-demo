import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'abhi_event.dart';
part 'abhi_state.dart';

class AbhiBloc extends Bloc<AbhiEvent, AbhiState> {
  AbhiBloc() : super(AbhiInitial());

  @override
  Stream<AbhiState> mapEventToState(
    AbhiEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AbhiEmailButtonClickedEvent)
      yield AbhiEmailLoadState();
    else if (event is AbhiPhoneButtonClickedEvent) yield AbhiPhoneLoadState();
  }
}
