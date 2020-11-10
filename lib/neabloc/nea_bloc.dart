import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nea_event.dart';
part 'nea_state.dart';

class NeaBloc extends Bloc<NeaEvent, NeaState> {
  NeaBloc() : super(NeaInitial());

  @override
  Stream<NeaState> mapEventToState(
      NeaEvent event,
      ) async* {
    // TODO: implement mapEventToState
    if (event is NeaEmailId)
      yield NeaEmailIdState();
    else if (event is NeaPhoneNumber) yield NeaPhoneNumberState();
    else if (event is NeaBackButtonClickedEvent) yield NeaInitial();
  }
}
