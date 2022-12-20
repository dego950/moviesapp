import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/models/series.dart';
import 'package:moviesapp/widgets/btn_amarillo.dart';

class SeriesDetailsPages extends StatelessWidget {
  const SeriesDetailsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Series serie = ModalRoute.of(context)!.settings.arguments as Series;

    return Scaffold(
      backgroundColor: SeriesAppColor.black,
      body: CustomScrollView(
        slivers: [
          _CustomAppBar( serie: serie),
          SliverList(
              delegate: SliverChildListDelegate([
                _Overview(serie: serie,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border_outlined, size: 35,color: Colors.white),
                    SizedBox(width: 5,),
                    Text('${serie.voteAverage}', style: TextStyle(color: SeriesAppColor.primary, fontSize: 26),)
                  ],
                ),
                BtnAmarillo(text: 'Watch now', color: SeriesAppColor.primary, ruta: 'recentDetails')
              ])
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Series serie;

  const _CustomAppBar({required this.serie});


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: SeriesAppColor.black,
      expandedHeight: 500,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10,left: 10, right: 10),
          child: Text(
              serie.name,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        background: FadeInImage(
          placeholder: NetworkImage('https://via.placeholder.com/500'),
          image: NetworkImage(serie.fullPosterImg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Series serie;

  const _Overview({ required this.serie});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SeriesAppColor.black,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Text(
          serie.overview,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: SeriesAppColor.white,
          fontSize: 16
        ),
      ),
    );
  }
}


