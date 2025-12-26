class AppUser {
  late final String uid;
  late final String email;
  late final String password;
  late final String name;

  AppUser({
    required this.email,
    required this.password,
    required this.name,
    required this.uid,
  });
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'name': name,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      uid: json['uid'],
      email: json['email'],
      password: json['password'],
      name: json['name'],
    );
  }
}
