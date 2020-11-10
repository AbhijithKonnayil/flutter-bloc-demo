part of 'home_bloc.dart';

@immutable 
// ignore: must_be_immutable
abstract class HomeState {
  String data;
}

// ignore: must_be_immutable
class HomeInitial extends HomeState {}

// ignore: must_be_immutable
class HomeLoadingState extends HomeState {}

// ignore: must_be_immutable
class HomeDataLoadSuccessState extends HomeState {
  String data;
  HomeDataLoadSuccessState(this.data);
}

// ignore: must_be_immutable
class HomeDataLoadFailureState extends HomeState {
  String message, abhijith;
  HomeDataLoadFailureState(this.message);
}
