import 'package:flutter_web_core/exports.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  //UserCubit(super.initialState);
  UserCubit() : super(UserInitialState());

  void activateUser(User user) {
    emit(UserLoggedState(user: user));
  }

  void desactivateUser() {}
}
