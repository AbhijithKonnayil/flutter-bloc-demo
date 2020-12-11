import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is DataLoadButtonClickedEvent) {
      try {
        yield HomeLoadingState();
        var response = await http.get("http://15.206.66.115/item/view/");
        if (response.statusCode == 200)
          yield HomeDataLoadSuccessState(response.body);
        else {
          var x = json.decode(response.body);

          yield HomeDataLoadFailureState(x['detail']);
        }
      } catch (e) {
        yield HomeDataLoadFailureState(e.toString());
      }
    }
  }
}
