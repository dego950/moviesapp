import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/recent_slider_vertical.dart';

class RecentPages extends StatelessWidget {
  const RecentPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: SeriesAppColor.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            RecentSliderVertical()
          ],
        ),

      ),
    );
  }
}
