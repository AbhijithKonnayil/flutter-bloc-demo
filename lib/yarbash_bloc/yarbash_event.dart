part of 'yarbash_bloc.dart';

abstract class YarbashEvent {}

class YarbashEmailButtonClickedEvent extends YarbashEvent {}

class YarbashPhoneButtonClickedEvent extends YarbashEvent {}

class YarbashBackButtonClickedEvent extends YarbashEvent {}
