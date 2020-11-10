import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'jobin_event.dart';
part 'jobin_state.dart';

class JobinBloc extends Bloc<JobinEvent, JobinState> {
  JobinBloc() : super(JobinInitial());

  @override
  Stream<JobinState> mapEventToState(
    JobinEvent event,
  ) async* {
    if (event is JobinEmailButtonClickedEvent)
      yield JobinEmailLoadState();
    else if (event is JobinPhoneButtonClickedEvent)
      yield JobinPhoneLoadState();
    else if (event is JobinBackButtonClickedEvent) yield JobinInitial();
  }
}
