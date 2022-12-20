import 'dart:convert';

class Series {
  Series({
    this.backdropPath,
    this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.name,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  String? backdropPath;
  DateTime? firstAirDate;
  List<int> genreIds;
  int id;
  String name;
  List<String> originCountry;
  String originalLanguage;
  String originalName;
  String overview;
  double popularity;
  String? posterPath;
  double voteAverage;
  int voteCount;

  get fullPosterImg{
    if(this.posterPath != null){
      return 'https://image.tmdb.org/t/p/w500${ this.posterPath }';
    }
    return 'https://via.placeholder.com/300';
  }

  get fullBackdropPath{
    if(this.backdropPath != null){
      return 'https://image.tmdb.org/t/p/w500${ this.backdropPath }';
    }
    return 'https://via.placeholder.com/300';
  }

  factory Series.fromJson(String str) => Series.fromMap(json.decode(str));

  factory Series.fromMap(Map<String, dynamic> json) => Series(
        backdropPath:
            json["backdrop_path"] == null ? null : json["backdrop_path"],
        firstAirDate: DateTime.parse(json["first_air_date"]),
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        name: json["name"],
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );
}
