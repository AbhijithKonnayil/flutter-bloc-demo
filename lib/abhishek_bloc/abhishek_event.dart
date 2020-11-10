part of 'abhishek_bloc.dart';

abstract class AbhishekEvent {}

class AbhishekEmailButtonClickedEvent extends AbhishekEvent {}
class AbhishekPhoneButtonClickedEvent extends AbhishekEvent {}
class AbhishekBackButtonClickedEvent extends AbhishekEvent {}