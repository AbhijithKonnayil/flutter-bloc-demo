part of 'abhi_bloc.dart';

@immutable
abstract class AbhiEvent {}

class AbhiEmailButtonClickedEvent extends AbhiEvent{}
class AbhiPhoneButtonClickedEvent extends AbhiEvent{}