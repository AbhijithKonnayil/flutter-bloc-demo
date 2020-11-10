part of 'irene_bloc.dart';

@immutable
abstract class IreneEvent {}

class IreneEmailButtonClickedEvent extends IreneEvent {}

class IrenePhoneButtonClickedEvent extends IreneEvent {}

class IreneBackButtonClickedEvent extends IreneEvent {}
