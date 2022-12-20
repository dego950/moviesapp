import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/serie_slider.dart';
import 'package:moviesapp/widgets/serie_slider_vertical.dart';
 class HomePages extends StatelessWidget {
   const HomePages({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       height: double.infinity,
       color: SeriesAppColor.black,
       child: SingleChildScrollView(
         padding: EdgeInsets.only(left: 15, right: 15),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget> [
              Container(
                padding: EdgeInsets.only(top: 8),
                child: const Text(
                   'Popular',
                   style: TextStyle(color: SeriesAppColor.white, fontSize: 20, fontWeight: FontWeight.bold),
                 ),
             ),
             SeriesSlider(),
             Container(
               margin: EdgeInsets.only(bottom: 12,top: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: const [
                   Text('See All', style: TextStyle(color: SeriesAppColor.primary, fontSize: 16),),
                   Icon(Icons.arrow_forward, color: SeriesAppColor.primary,)
                 ],
               ),
             ),
             const SizedBox(
               height: 1,
               width: double.infinity,
               child: DecoratedBox(decoration: BoxDecoration(
                 color: SeriesAppColor.secundary
               )),
             ),
             Container(
               padding: EdgeInsets.only(top: 8),
               child: const Text('Recommendations',
                 style: TextStyle(
                     color: SeriesAppColor.white,
                     fontSize: 20,
                     fontWeight: FontWeight.bold)
                 ,),
             ),
             SerieSliderVertical(),
           ],
         ),
       )
     );
   }
 }
