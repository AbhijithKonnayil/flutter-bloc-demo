part of 'nj_bloc.dart';

@immutable
abstract class NjState {}

class NjInitial extends NjState {}

class EmailClickedState extends NjInitial {}

class PhoneClickedState extends NjInitial {}

class BackClickedState extends NjInitial {}
