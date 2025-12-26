import 'package:train/core/model/user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailPassword(String email, String pw);

  Future<AppUser?> registerWithEmailPassword(
    String email,
    String pw,
    String name,
  );
  Future<AppUser?> getCurrentUser();
  Future<void> logOut();
}
