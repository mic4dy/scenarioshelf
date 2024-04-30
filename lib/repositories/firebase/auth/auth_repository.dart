// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:scenarioshelf/repositories/apis/auth_api.dart';

// import 'package:scenarioshelf/utils/logger.dart';

// part 'auth_repository.g.dart';

// @Riverpod(keepAlive: true)
// AuthRepository authRepository(AuthRepositoryRef _) => const AuthRepository();

// class AuthRepository implements AuthAPI {
//   const AuthRepository();

//   @override
//   Future<User> signUpWithEmailAndPassword({required String email, required String password}) async {
//     final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     if (credential.user == null) throw FirebaseAuthException(code: 'user-not-found');

//     logger.i('Signed Up with Email and Password');
//     return credential.user!;
//   }

//   @override
//   Future<User> signInWithEmailAndPassword({required String email, required String password}) async {
//     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     if (credential.user == null) throw FirebaseAuthException(code: 'user-not-found');

//     logger.i('Signed In with Email and Password');
//     return credential.user!;
//   }

//   @override
//   Future<User> signInWithGoogle() async {
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//     final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
//     final OAuthCredential oauthCredential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );
//     final credential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);

//     if (credential.user == null) throw FirebaseAuthException(code: 'user-not-found');

//     logger.i('Signed In with Google Account');
//     return credential.user!;
//   }

//   @override
//   User? getCurrentUser() => FirebaseAuth.instance.currentUser;

//   @override
//   Future<void> signOut() async {
//     logger.i('Signed Out');
//     await FirebaseAuth.instance.signOut();
//   }
// }
