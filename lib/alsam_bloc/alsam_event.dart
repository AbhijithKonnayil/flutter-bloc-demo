part of 'alsam_bloc.dart';

@immutable
abstract class AlsamEvent {}

class AlsamEmailButtonClickedEvent extends AlsamEvent{}
class AlsamPhoneButtonClickedEvent extends AlsamEvent{}
class BackButtonClickedEvent extends AlsamEvent{}