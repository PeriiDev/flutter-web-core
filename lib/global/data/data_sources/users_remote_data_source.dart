import 'package:flutter_web_core/exports.dart';

class UserRemoteDataSource {
  static Future<List<UserResponse>> getAllCarsNestJs() async {
    //TODO HACEMOS LA PETICION HTTPs

    try {
      final response = await CustomHttp.get(url: EndPoint.allCars);

      //Comprobar la peticion para saber donde tengo la data
      if (response.statusCode == 200) {
        //final Map<String, dynamic> responseDecode = jsonDecode(response.body);
        print(response.body);
        return [];
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}
