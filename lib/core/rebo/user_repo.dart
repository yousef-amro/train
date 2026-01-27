import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UsersRepo {
  final _db = FirebaseFirestore.instance;

  Future<void> saveCurrentUser({
    required String name,
    required String email,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) throw Exception('User not logged in');
    final ref = _db.collection('users').doc(user.uid);

    await ref.set({
      'uid': user.uid,
      'email': email,
      'name': name,
      'updatedAt': FieldValue.serverTimestamp(),
      'createdAt':
          FieldValue.serverTimestamp(), // first time only (merge keeps it)
    }, SetOptions(merge: true));
  }
}
