import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/serie_slider_vertical.dart';

class FavoritesPages extends StatelessWidget {
  const FavoritesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: SeriesAppColor.black,
      child: SerieSliderVertical(),
    );
  }
}
