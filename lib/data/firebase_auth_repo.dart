import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:train/core/model/user.dart';
import 'package:train/core/repo/auth_repo.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<AppUser?> getCurrentUser() async {
    final user = _auth.currentUser;
    if (user != null) {
      return AppUser(
        email: user.email!,
        password: '',
        name: '',
        uid: user.uid,
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> logOut() async {
    await _auth.signOut();
  }

  @override
  Future<AppUser?> loginWithEmailPassword(
    String email,
    String pw,
  ) async {
    try {
      UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: pw);
      AppUser user = AppUser(
        email: email,
        password: pw,
        name: '',
        uid: userCredential.user!.uid,
      );
      return user;
    } on FirebaseException catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<AppUser?> registerWithEmailPassword(
    String email,
    String pw,
    String name,
  ) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: pw);
      AppUser user = AppUser(
        email: email,
        password: pw,
        name: name,
        uid: userCredential.user!.uid,
      );
      return user;
    } on FirebaseException catch (e) {
      throw Exception(e);
    }
  }
}
