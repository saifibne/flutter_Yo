import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<int> {
  CreateAccountCubit() : super(0);

  void changePage(int page) {
    emit(page);
  }
}
