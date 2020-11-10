import 'package:flutter_bloc/flutter_bloc.dart';

part 'abhishek_state.dart';
part 'abhishek_event.dart';

class AbhishekBloc extends Bloc<AbhishekEvent,AbhishekState>{
  AbhishekBloc() : super(AbhishekInitialState());

  @override
  Stream<AbhishekState> mapEventToState(AbhishekEvent event) async* {
    if (event is AbhishekEmailButtonClickedEvent)
      yield AbhishekEmailShowState();
    else if (event is AbhishekPhoneButtonClickedEvent)
      yield AbhishekPhoneShowState();
    else if (event is AbhishekBackButtonClickedEvent)
      yield AbhishekInitialState();
  }

}

