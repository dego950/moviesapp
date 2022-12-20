import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviesapp/models/series.dart';
import 'package:moviesapp/models/series_response.dart';
import 'package:moviesapp/models/series_topRated_response.dart';

class SeriesProvider extends ChangeNotifier{

  String _apyKey = 'f44bac887b09bc1aec2af442bc29d4e2';
  String _baseUrl = 'api.themoviedb.org';
  String _lanhuage = 'en-US';

  List<Series> onDisplatSeries =[];
  List<Series> topRatedSeries = [];

  SeriesProvider(){
    print('Series App provider inicializado');
    getOnDisplaySeries();
    getSeriesTopRated();
  }

  getOnDisplaySeries() async{
    var url = Uri.https(_baseUrl, '/3/tv/popular', {
      'api_key': _apyKey,
      'language': _lanhuage,
      'page': '1'
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowSeriesResponse = SeriesResponse.fromJson(response.body);
    this.onDisplatSeries = nowSeriesResponse.results;
    notifyListeners();
  }

  getSeriesTopRated() async{
    var url = Uri.https(_baseUrl, '/3/tv/top_rated', {
      'api_key': _apyKey,
      'language': _lanhuage,
      'page': '1'
    });

    // Await the http get response, then decode the json-formatted response.
    final responseTopRated = await http.get(url);
    print(responseTopRated.body);
    final nowTopRatedSeries = TopRatedResponse.fromJson(responseTopRated.body);
    this.topRatedSeries = nowTopRatedSeries.results;
    notifyListeners();

  }
}