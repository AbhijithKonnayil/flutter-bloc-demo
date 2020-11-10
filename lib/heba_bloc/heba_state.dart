part of 'heba_bloc.dart';

@immutable
abstract class HebaState {}

class HebaInitial extends HebaState {}
class HebaEmailLoadState extends HebaState {}
class HebaPhoneLoadState extends HebaState {}

