import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolearn/User/repository/FirebaseAuth.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _firebaseAuthAPI.signIn();

  signOut() => _firebaseAuthAPI.signOut();

}
