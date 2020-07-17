import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/repository/auth_repository.dart';
import 'package:geolearn/User/ui/screens/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> SignIn() {
    return _auth_repository.signInFirebase();
  }

  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
