import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomHttp {
  static Future<http.Response> get({required String url, Map<String, String>? headers}) async {
    return await http.get(Uri.parse(url), headers: {
      "Access-Control-Allow-Origin" : '*',
      "Accept": "application/json",
    });
  }

  static Future<http.Response> post({required String url, Object? body, Map<String, String>? headers}) async {
    return await http.post(Uri.parse(url), body: body, headers: headers);
  }

  static Future<http.Response> put({required String url, Map<String, String>? headers}) async {
    return await http.put(Uri.parse(url), headers: headers);
  }

  static Future<http.Response> delete({required String url, Map<String, String>? headers}) async {
    return await http.delete(Uri.parse(url), headers: headers);
  }

  static Future<String> postImage({
    required String url,
    required Map<String, String> body,
    Map<String, String> headers = const {'Content-Type': 'multipart/form-data'},
    required String filepath,
  }) async {
    final request = http.MultipartRequest('POST', Uri.parse(url))
      ..fields.addAll(body)
      ..headers.addAll(headers)
      ..files.add(await http.MultipartFile.fromPath('image', filepath));

    final http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      http.Response responseOrigin = await http.Response.fromStream(response);
      return jsonDecode(responseOrigin.body)["image"];
    } else {
      return 'null';
    }
  }
}
