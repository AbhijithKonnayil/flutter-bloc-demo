part of 'jobin_bloc.dart';

@immutable
abstract class JobinState {}

class JobinInitial extends JobinState {}

class JobinEmailLoadState extends JobinState {}

class JobinPhoneLoadState extends JobinState {}
