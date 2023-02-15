part of 'create_account_cubit.dart';

@immutable
abstract class CreateAccountState {}

class CreateAccountInitial extends CreateAccountState {
  final int activePage;
  final int timeLeft;

  CreateAccountInitial(this.activePage, this.timeLeft);
}

class CreateAccount extends CreateAccountInitial {
  CreateAccount(int activePage, int timeLeft) : super(activePage, timeLeft);
}

class TriviaCounter extends CreateAccountInitial {
  TriviaCounter(int activePage, int timeLeft) : super(activePage, timeLeft);
}
