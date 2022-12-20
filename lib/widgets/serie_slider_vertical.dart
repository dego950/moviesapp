import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/raintingBar.dart';

class SerieSliderVertical extends StatelessWidget {
  const SerieSliderVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
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
      width: double.infinity,
      height: 190,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: SeriesAppColor.black
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: SeriesAppColor.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 130,
              height: double.infinity,
              padding: EdgeInsets.all(3),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/seriesDetails',
                    arguments: 'mo'),
                child: const FadeInImage(
                  height: 190,
                  width: 130,
                  placeholder: NetworkImage('https://via.placeholder.com/300'),
                  image: NetworkImage('https://via.placeholder.com/300'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Serie 1', style: TextStyle(color: SeriesAppColor.white,fontSize: 18),),
                  RaintingBar(),
                  Text('subtitulo', style: TextStyle(color: SeriesAppColor.secundary, fontSize: 14),),
                  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                          child: Container(
                            width: 74,
                            height: 12,
                            child: const Center(
                              child: Text('whatch now', style: TextStyle(color: SeriesAppColor.black, fontSize: 12),),
                            ),
                          ),
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            backgroundColor: SeriesAppColor.primary,
                            shape: StadiumBorder(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

