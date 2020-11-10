part of 'nea_bloc.dart';

@immutable
abstract class NeaEvent{}

class NeaPhoneNumber extends NeaEvent{}
class NeaEmailId extends NeaEvent{}
class NeaBackButtonClickedEvent extends NeaEvent{}