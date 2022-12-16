part of 'create_account_cubit.dart';

@immutable
abstract class CreateAccountState {}

class CreateAccountInitial extends CreateAccountState {
  final int activePage = 0;
  final int timeLeft = 600;
}

class CreateAccount extends CreateAccountInitial {
  CreateAccount(int activePage) {
    super.activePage = activePage;
  }
}

class TriviaCounter extends CreateAccountInitial {
  TriviaCounter(int timeLeft) {
    super.timeLeft = timeLeft;
  }
}
