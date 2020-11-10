part of 'shibin_bloc.dart';

@immutable
abstract class ShibinEvent {}

class ShibinEmailButtonClickedEvent extends ShibinEvent{}
class ShibinPhoneButtonClickedEvent extends ShibinEvent{}