part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeDataLoadSuccessState extends HomeState {
  String data;
  HomeDataLoadSuccessState(this.data);
}

class HomeDataLoadFailureState extends HomeState {
  String message, abhijith;
  HomeDataLoadFailureState(this.message);
}
