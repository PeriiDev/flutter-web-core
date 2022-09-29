part of 'user_cubit.dart';

@immutable
abstract class UserState {
}

class UserInitialState extends UserState {
  final bool isLogged = false;

  @override
  String toString() {
    return 'isLogged: false';
  }
}

class UserLoggedState extends UserState {
  final bool isLogged = true;
  final User user;

  UserLoggedState({required this.user});

  @override
  String toString() {
    return 'Usuario: $user';
  }
}
