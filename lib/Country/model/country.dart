// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

Country countryFromJson(String str) => Country.fromJson(json.decode(str));

String countryToJson(Country data) => json.encode(data.toJson());

class Country {
  Country(
      {this.name,
      this.overview,
      this.overview2,
      this.alpha2Code,
      this.capital,
      this.region,
      this.subregion,
      this.population,
      this.flag,
      this.latlng,
      this.cioc,
      this.coor});

  String name;
  String overview;
  String overview2;
  String alpha2Code;
  String capital;
  String region;
  String subregion;
  int population;
  String flag;
  List<double> latlng;
  String cioc;
  GeoPoint coor;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"],
        overview: json["overview"],
        overview2: json["overview2"],
        alpha2Code: json["alpha2Code"],
        capital: json["capital"],
        region: json["region"],
        subregion: json["subregion"],
        population: json["population"],
        flag: json["flag"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        cioc: json["cioc"],
        coor: json["lat_lng"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "overview": overview,
        "overview2": overview2,
        "alpha2Code": alpha2Code,
        "capital": capital,
        "region": region,
        "subregion": subregion,
        "population": population,
        "flag": flag,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "cioc": cioc,
        "lat_lng": coor,
      };
}
