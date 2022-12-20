import 'dart:convert';

import 'package:moviesapp/models/series.dart';

class SeriesResponse {
  SeriesResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Series> results;
  int totalPages;
  int totalResults;

  factory SeriesResponse.fromJson(String str) =>
      SeriesResponse.fromMap(json.decode(str));

  factory SeriesResponse.fromMap(Map<String, dynamic> json) => SeriesResponse(
        page: json["page"],
        results:
            List<Series>.from(json["results"].map((x) => Series.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
