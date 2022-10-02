import 'package:flutter_web_core/exports.dart';
import 'package:flutter_web_core/global/data/dto/users_response.dart';
import 'package:flutter_web_core/global/data/data_sources/users_local_data_source.dart';

class UsersService {
  static Future<List<User>> getAll() async {
    //comprobar si es local o remoto
    final List<UserResponse> responseUsers = await UsersLocalDataSource.getAllUsers();

    final List<User> listUser = responseUsers.map((user) {
      return User(email: user.email, password: user.password);
    }).toList();

    return listUser;
  }
}
