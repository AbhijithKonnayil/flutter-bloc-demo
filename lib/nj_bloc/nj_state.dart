part of 'nj_bloc.dart';

@immutable
abstract class NjState {}

class NjInitial extends NjState {}

class EmailClickedState extends NjState {}

class PhoneClickedState extends NjState {}

class BackClickedState extends NjState {}
