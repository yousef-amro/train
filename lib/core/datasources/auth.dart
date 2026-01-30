import 'package:firebase_auth/firebase_auth.dart';
import 'package:train/core/model/is_seller_model.dart';
import 'package:train/core/network_utils/network_utils.dart';

class AuthDataSource {
  static Future<UserModel> getUser({
    String? path,
    String? headers,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    final result = await NetworkUtils.get(
      path: 'users',
      headers: user!.uid,
    );
    return UserModel.isSeller(Map.from(result.data));
  }
}
