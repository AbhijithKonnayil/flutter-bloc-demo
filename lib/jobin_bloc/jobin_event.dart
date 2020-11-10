part of 'jobin_bloc.dart';

@immutable
abstract class JobinEvent {}

class JobinEmailButtonClickedEvent extends JobinEvent {}

class JobinPhoneButtonClickedEvent extends JobinEvent {}

class JobinBackButtonClickedEvent extends JobinEvent {}
