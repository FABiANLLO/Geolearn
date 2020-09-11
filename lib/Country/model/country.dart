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
      this.flagPath,
      this.latlng,
      this.cioc,
      this.img1,
      this.img2,
      this.img3,
      this.img4,
      this.overviewBan,
      this.overviewConti,
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
  String flagPath;
  List<double> latlng;
  String cioc;
  String img1;
  String img2;
  String img3;
  String img4;
  String overviewBan;
  String overviewConti;
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
        flagPath: json["flag_path"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        cioc: json["cioc"],
        img1: json["img1"],
        img2: json["img2"],
        img3: json["img3"],
        img4: json["img4"],
        overviewBan: json["overviewBan"],
        overviewConti: json["overviewConti"],
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
        "flag_path": flagPath,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "cioc": cioc,
        "img1": img1,
        "img2": img2,
        "img3": img3,
        "img4": img4,
        "overviewBan": overviewBan,
        "overviewConti": overviewConti,
        "lat_lng": coor,
      };
}
