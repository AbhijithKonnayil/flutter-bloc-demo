import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cerin_event.dart';
part 'cerin_state.dart';

class CerinBloc extends Bloc<CerinEvent, CerinState> {
  CerinBloc() : super(CerinInitial());

  @override
  Stream<CerinState> mapEventToState(
    CerinEvent event,
  ) async* {
    if (event is CerinEmailButtonClickedEvent)
      yield CerinEmailLoadState();
    else if (event is CerinPhoneButtonClickedEvent)
      yield CerinPhoneLoadState();
    else if (event is CerinBackButtonClickedEvent) yield CerinInitial();
  }
}
