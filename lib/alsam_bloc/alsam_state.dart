part of 'alsam_bloc.dart';

@immutable
abstract class AlsamState {}

class AlsamInitial extends AlsamState {}

class AlsamEmailLoadState extends AlsamState {}

class AlsamPhoneLoadState extends AlsamState {}