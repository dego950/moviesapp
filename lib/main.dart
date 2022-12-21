import 'package:flutter/material.dart';
import 'package:moviesapp/providers/series_provider.dart';
import 'package:moviesapp/routes/routes.dart';
import 'package:provider/provider.dart';


void main() => runApp(AppStade());

class AppStade extends StatelessWidget {
  const AppStade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SeriesProvider(),lazy: false,)
        ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeriesApp',
      initialRoute: 'welcome',
      routes: appRoutes,
    );
  }
}
