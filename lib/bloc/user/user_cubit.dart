import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_core/exports.dart';
import 'package:flutter_web_core/global/data/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  //UserCubit(super.initialState);
  UserCubit() : super(UserInitialState());

  void activateUser(User user) {
    emit(UserLoggedState(user: user));
  }

  void desactivateUser(){
    
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }
}
