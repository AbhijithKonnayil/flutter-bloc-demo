part of 'nj_bloc.dart';

@immutable
abstract class NjEvent {}

class EmailClickedEvent extends NjEvent {}

class PhoneClickedEvent extends NjEvent {}

class BackClickedEvent extends NjEvent {}
