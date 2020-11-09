part of 'abhi_bloc.dart';

@immutable
abstract class AbhiState {}

class AbhiInitial extends AbhiState {}

class AbhiEmailLoadState extends AbhiState {}

class AbhiPhoneLoadState extends AbhiState {}
