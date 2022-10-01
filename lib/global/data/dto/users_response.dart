import 'dart:convert';

class UserResponse {

  final int id;
  final String first_name;
  final String last_name;
  final String email;
  final String password;
  final String role;

  UserResponse({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
    required this.role,
  });

  

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'first_name': first_name});
    result.addAll({'last_name': last_name});
    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'role': role});
  
    return result;
  }

  factory UserResponse.fromMap(Map<String, dynamic> map) {
    return UserResponse(
      id: map['id']?.toInt() ?? 0,
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      role: map['role'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResponse.fromJson(String source) => UserResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserResponse(id: $id, first_name: $first_name, last_name: $last_name, email: $email, password: $password, role: $role)';
  }
}
