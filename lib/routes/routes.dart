
import 'package:flutter/cupertino.dart';
import 'package:moviesapp/pages/favorites_pages.dart';
import 'package:moviesapp/pages/home_page.dart';
import 'package:moviesapp/pages/login_pages.dart';
import 'package:moviesapp/pages/recent_details_pages.dart';
import 'package:moviesapp/pages/recent_pages.dart';
import 'package:moviesapp/pages/search_page.dart';
import 'package:moviesapp/pages/series_details_pages.dart';
import 'package:moviesapp/pages/series_pages.dart';
import 'package:moviesapp/pages/tab_pages.dart';
import 'package:moviesapp/pages/welcome_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'welcome': (_) => WelcomePage(),
  'tabPages': (_) => TabPages(),
  'login': (_) => LoginPages(),
  'home': (_) => HomePages(),
  'series': (_) => SeriesPages(),
  'seriesDetails': (_) => SeriesDetailsPages(),
  'favorites': (_) => FavoritesPages(),
  'recent': (_) => RecentPages(),
  'searchs': (_) => SearchsPages(),
  'recentDetails': (_) => RecentDetailsPages()
};