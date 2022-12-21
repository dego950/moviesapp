// To parse this JSON data, do
//
//     final airingToday = airingTodayFromMap(jsonString);

import 'dart:convert';

import 'package:moviesapp/models/series.dart';

class AiringToday {
  AiringToday({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Series> results;
  int totalPages;
  int totalResults;

  factory AiringToday.fromJson(String str) => AiringToday.fromMap(json.decode(str));


  factory AiringToday.fromMap(Map<String, dynamic> json) => AiringToday(
    page: json["page"],
    results: List<Series>.from(json["results"].map((x) => Series.fromMap(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );

}
