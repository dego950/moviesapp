import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/raintingBar.dart';

class SeriesSlider extends StatelessWidget {
  const SeriesSlider({Key? key}) : super(key: key);

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
                  itemCount: 20,
                  itemBuilder: (_, int index) => _SeriesPoster()))
        ],
      ),
    );
  }
}

class _SeriesPoster extends StatelessWidget {
  const _SeriesPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 290,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/seriesDetails',
            arguments: 'mo'),
            child: FadeInImage(
              height: 190,
              width: 130,
              placeholder: NetworkImage('https://via.placeholder.com/300'),
              image: NetworkImage('https://via.placeholder.com/300'),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Serie1',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(color: SeriesAppColor.white),
          ),
          RaintingBar()
        ],
      ),

    );
  }
}

