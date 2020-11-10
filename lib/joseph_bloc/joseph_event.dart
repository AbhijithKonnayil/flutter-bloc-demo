part of 'joseph_bloc.dart';

@immutable
abstract class JosephEvent{}

class JosephEmailButtonClickedEvent extends JosephEvent{}
class JosephPhoneButtonClickedEvent extends JosephEvent{}