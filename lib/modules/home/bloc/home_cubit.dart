import 'package:flutter_web_core/exports.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  //UserCubit(super.initialState);
  HomeCubit() : super(HomeInitialState());

  void displayAllUsers() async {
    //TODO -> CALL USECASE
    final users = await UsersService.getAll();
    //TODO -> EMIT NEW STATE
    emit(HomeDisplayUsers(users: users));
  }
}
