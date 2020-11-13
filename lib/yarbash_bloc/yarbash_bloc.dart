import 'package:flutter_bloc/flutter_bloc.dart';

part 'yarbash_state.dart';
part 'yarbash_event.dart';

class YarbashBloc extends Bloc<YarbashEvent, YarbashState> {
  YarbashBloc() : super(YarbashInitialState());

  @override
  Stream<YarbashState> mapEventToState(YarbashEvent event) async* {
    if (event is YarbashEmailButtonClickedEvent)
      yield YarbashEmailShowState();
    else if (event is YarbashPhoneButtonClickedEvent)
      yield YarbashPhoneShowState();
    else if (event is YarbashBackButtonClickedEvent)
      yield YarbashInitialState();
  }
}
