import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'irene_event.dart';
part 'irene_state.dart';

class IreneAnnBloc extends Bloc<IreneAnnEvent, IreneAnnState> {
  IreneAnnBloc() : super(IreneInitial());

  @override
  Stream<IreneAnnState> mapEventToState(
    IreneAnnEvent event,
  ) async* {
    if (event is IreneEmailButtonClickedEvent)
      yield IreneEmailLoadState();
    else if (event is IrenePhoneButtonClickedEvent)
      yield IrenePhoneLoadState();
    else if (event is IreneBackButtonClickedEvent) yield IreneInitial();
  }
}
