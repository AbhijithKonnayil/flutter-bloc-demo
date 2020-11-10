part of 'cerin_bloc.dart';

@immutable
abstract class CerinEvent {}

class CerinEmailButtonClickedEvent extends CerinEvent {}

class CerinPhoneButtonClickedEvent extends CerinEvent {}

class CerinBackButtonClickedEvent extends CerinEvent {}
