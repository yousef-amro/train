class UserModel {
  final String? role;

  const UserModel({this.role});

  bool get isSeller => role == 'Buyer';

  factory UserModel.isSeller(Map<String, dynamic> json) {
    if (json['error'] != null || json['code'] == 'error') {
      throw Exception(json['error']?.toString() ?? 'Login failed');
    }

    return UserModel(
      role: json['fields']['role']['stringValue']?.toString(),
    );
  }
}
