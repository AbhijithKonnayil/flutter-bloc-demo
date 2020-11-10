part of 'irene_bloc.dart';

@immutable
abstract class IreneState {}

class IreneInitial extends IreneState {}

class IreneEmailLoadState extends IreneState {}

class IrenePhoneLoadState extends IreneState {}