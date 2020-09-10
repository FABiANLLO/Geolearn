import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/User/model/user.dart';
import 'package:geolearn/constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CloudFirestoreAPI {
  final String USERS = 'users';

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'testApproved': user.testApproved,
      'LastSignIn': DateTime.now()
    }, merge: true);
  }

  Future<Country> fetchRestCountry(String countryId) async {
    final String url =
        Constant.countryCodeUrl.replaceFirst('{code}', countryId);
    var country;
    await http.get(url).then((value) {
      country = countryFromJson(value.body);
    });
    print('### ${country.name}');
    return country;
  }

  Future<void> addFirestoreMovie(Country country) async {
    _db
        .collection('countries')
        .document(country.alpha2Code)
        .setData(country.toJson());
  }

  Future<List<Country>> addAllCountries() async {
    final countries = List<Country>();
    for (String countryId in Constant.countriesIds) {
      final country = await fetchRestCountry(countryId);
      countries.add(country);
      await addFirestoreMovie(country);
    }
    return countries;
  }
}
