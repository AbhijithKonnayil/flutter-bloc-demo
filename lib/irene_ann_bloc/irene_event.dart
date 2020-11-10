part of 'irene_bloc.dart';

@immutable
abstract class IreneAnnEvent {}

class IreneEmailButtonClickedEvent extends IreneAnnEvent {}

class IrenePhoneButtonClickedEvent extends IreneAnnEvent {}

class IreneBackButtonClickedEvent extends IreneAnnEvent {}
