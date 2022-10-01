part of 'user_cubit.dart';

enum Authenticate { checking, noAuthenticate, authenticate }

@immutable
abstract class UserState {}

class UserInitialState extends UserState {
  final bool isLogged = false;
  final Authenticate auth = Authenticate.checking;

  @override
  String toString() {
    return 'Usuario initial state';
  }
}

class UserLoggedState extends UserState {
  final bool isLogged = true;
  final Authenticate auth = Authenticate.authenticate;
  final User user;

  UserLoggedState({required this.user});

  @override
  String toString() {
    return 'Usuario: $user';
  }
}

class UserDisconnectedState extends UserState {
  final bool isLogged = false;
  final Authenticate auth = Authenticate.noAuthenticate;
  
  @override
  String toString() => 'Usuario no autenticado';
  
}
