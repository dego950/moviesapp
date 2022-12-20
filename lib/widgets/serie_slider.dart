import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/models/series.dart';
import 'package:moviesapp/widgets/raintingBar.dart';

class SeriesSlider extends StatelessWidget {

  final List<Series> series;
  const SeriesSlider({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: series.length,
                  itemBuilder: (_, int index) {
                    final serie  = series[index];
                    return Container(
                      width: 130,
                      height: 290,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, 'seriesDetails',
                                arguments: serie),
                            child: FadeInImage(
                              height: 190,
                              width: 130,
                              placeholder: NetworkImage('https://via.placeholder.com/300'),
                              image: NetworkImage(serie.fullPosterImg),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            serie.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: SeriesAppColor.white),
                          ),
                          RaintingBar()
                        ],
                      ),
                    );
                  }),
          )
        ],
      ),
    );
  }
}

