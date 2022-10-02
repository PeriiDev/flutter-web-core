part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {
  final List<User> users = [];
}

class HomeDisplayUsers extends HomeState {
  final List<User> users;
  HomeDisplayUsers({required this.users});
}
