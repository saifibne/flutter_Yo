import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:async';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  late Timer triviaTimer;

  CreateAccountCubit() : super(CreateAccountInitial(0, 600));

  void changePage(int page) {
    emit(CreateAccount(page, (state as CreateAccountInitial).timeLeft));
  }

  void startCounter() {
    triviaTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      var secondLeft = (state as CreateAccountInitial).timeLeft - 1;
      emit(
        TriviaCounter((state as CreateAccountInitial).activePage, secondLeft),
      );
      if (secondLeft == 0) {
        triviaTimer.cancel();
      }
    });
  }
}
