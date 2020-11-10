import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'azeem_bloc_event.dart';
part 'azeem_bloc_state.dart';

class AzeemBlocBloc extends Bloc<AzeemBlocEvent, AzeemBlocState> {
  AzeemBlocBloc() : super(AzeemBlocInitial());

  @override
  Stream<AzeemBlocState> mapEventToState(
    AzeemBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AzeemEmailButtonClickEvent)
      yield AzeemEmailLoadState();
    else if (event is AzeemPhoneButtonClickEvent) 
      yield AzeemPhoneLoadState();
  }
}
