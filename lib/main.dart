import 'package:flutter/material.dart';
import 'package:moviesapp/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeriesApp',
      initialRoute: 'home',
      routes: appRoutes,
    );
  }
}
