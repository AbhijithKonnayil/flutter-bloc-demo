part of 'joseph_bloc.dart';

@immutable
abstract class JosephState {}

class JosephInitial extends JosephState {}

class JosephEmailLoadState extends JosephState{}

class JosephPhoneLoadState extends JosephState{}
