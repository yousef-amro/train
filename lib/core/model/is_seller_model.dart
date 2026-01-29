class UserModel {
  final String? role;

  const UserModel({this.role});

  factory UserModel.isSeller(Map<String, dynamic> json) {
    print("7ambola $json");
    print("Bolbol ${json['fields']['role']['stringValue']}");

    if (json['error'] != null || json['code'] == 'error') {
      throw Exception(json['error']?.toString() ?? 'Login failed');
    }

    return UserModel(
      role: json['fields']['role']['stringValue']?.toString(),
    );
  }
}
