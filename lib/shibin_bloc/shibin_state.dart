part of 'shibin_bloc.dart';

@immutable
abstract class ShibinState {}

class ShibinInitial extends ShibinState {}

class ShibinEmailLoadState extends ShibinState {}

class ShibinPhoneLoadState extends ShibinState {}