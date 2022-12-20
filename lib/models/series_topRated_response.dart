// To parse this JSON data, do
//
//     final topRatedResponse = topRatedResponseFromMap(jsonString);

import 'dart:convert';

import 'package:moviesapp/models/series.dart';

class TopRatedResponse {
  TopRatedResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Series> results;
  int totalPages;
  int totalResults;

  factory TopRatedResponse.fromJson(String str) => TopRatedResponse.fromMap(json.decode(str));

  factory TopRatedResponse.fromMap(Map<String, dynamic> json) => TopRatedResponse(
    page: json["page"],
    results: List<Series>.from(json["results"].map((x) => Series.fromMap(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );
}