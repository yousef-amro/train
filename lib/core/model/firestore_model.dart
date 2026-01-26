// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class FirestoreRest {
//   FirestoreRest(this.projectId)
//     : dio = Dio(
//         BaseOptions(
//           baseUrl:
//               'https://firestore.googleapis.com/v1/projects/$projectId/databases/(default)/documents',
//         ),
//       );

//   final String projectId;
//   final Dio dio;

//   Future<void> upsertMyUserDoc({
//     required String name,
//     required String phone,
//   }) async {
//     final user = FirebaseAuth.instance.currentUser!;
//     final headers = await firestoreAuthHeaders();

//     final path = '/users/${user.uid}';

//     final body = {
//       "fields": {
//         "uid": {"stringValue": user.uid},
//         "name": {"stringValue": name},
//         "phone": {"stringValue": phone},
//         "email": {"stringValue": user.email ?? ""},
//         // serverTimestamp in REST:
//         "createdAt": {
//           "timestampValue": DateTime.now().toUtc().toIso8601String(),
//         },
//         "updatedAt": {
//           "timestampValue": DateTime.now().toUtc().toIso8601String(),
//         },
//       },
//     };

//     await dio.put(
//       path,
//       data: body,
//       options: Options(headers: headers),
//     );
//   }
// }
