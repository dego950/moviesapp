import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/models/series.dart';

class RecentSliderVertical extends StatelessWidget {
  final List<Series> series;

  const RecentSliderVertical({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: series.length,
                  itemBuilder: (_, int index) => _SeriesPoster(series: series[index],)))
        ],
      ),
    );
  }
}

class _SeriesPoster extends StatelessWidget {
  final Series series;

  const _SeriesPoster({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: SeriesAppColor.black
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'seriesDetails',
                  arguments: series),
              child: FadeInImage(
                height: 290,
                width: 280,
                placeholder: NetworkImage('https://via.placeholder.com/300'),
                image: NetworkImage(series.fullBackdropPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            series.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SeriesAppColor.white,
              fontWeight: FontWeight.bold,
              fontSize: 34),),
          SizedBox(
            height: 5,
          ),
          Text('Popularity ${series.popularity}',style: TextStyle(color: SeriesAppColor.secundary, fontSize: 20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Go to view',style: TextStyle(color: SeriesAppColor.primary, fontSize: 20),),
              Icon(Icons.arrow_forward, color: SeriesAppColor.primary,)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 1,
            width: 200,
            child: DecoratedBox(decoration: BoxDecoration(
                color: SeriesAppColor.secundary
            )),
          ),
        ],
      ),
    );
  }
}

