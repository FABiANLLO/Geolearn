import 'package:flutter/material.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/User/model/user.dart';
import 'package:geolearn/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<Country> fetchRestCountryFirestore(String countryId) =>
      _cloudFirestoreAPI.fetchRestCountry(countryId);
  Future<void> addFirestoreMovieFirestore(Country country) =>
      _cloudFirestoreAPI.addFirestoreMovie(country);
  Future<List<Country>> addAllCountriesFirestore() =>
      _cloudFirestoreAPI.addAllCountries();
}
