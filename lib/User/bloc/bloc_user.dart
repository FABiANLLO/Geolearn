import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/User/model/user.dart';
import 'package:geolearn/User/repository/auth_repository.dart';
import 'package:geolearn/User/repository/cloud_firestore_repository.dart';
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

  //Registro de Usuario
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  Future<Country> fetchRestCountry(String countryId) =>
      _cloudFirestoreRepository.fetchRestCountryFirestore(countryId);
  Future<void> addFirestoreMovie(Country country) =>
      _cloudFirestoreRepository.addFirestoreMovieFirestore(country);
  Future<List<Country>> addAllCountries() =>
      _cloudFirestoreRepository.addAllCountriesFirestore();

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {}
}
