import 'package:flutter_web_core/global/data/dto/users_response.dart';

import 'package:flutter_web_core/global/data/mock/mock_data.dart' show mockData;

class UsersLocalDataSource {
  static Future<List<UserResponse>> getAllUsers() async {
    //TODO HACEMOS LA PETICION HTTPs

    final List<UserResponse> data = mockData.map((user) {
      return UserResponse.fromMap(user);
    }).toList();

    return data;
  }
}
