part of 'heba_bloc.dart';

@immutable
abstract class HebaEvent {}
class HebaEmailButtonClickedEvent extends HebaEvent{}
class HebaPhoneButtonClickedEvent extends HebaEvent{}
class HebaBackButtonClickedEvent extends HebaEvent{}