import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RaintingBar extends StatefulWidget {
  const RaintingBar({Key? key}) : super(key: key);

  @override
  State<RaintingBar> createState() => _RaintingBarState();
}

class _RaintingBarState extends State<RaintingBar> {

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        children: [
          RatingBarIndicator(
            rating: _userRating,
            itemBuilder: (context, index) => Icon(
              _selectedIcon ?? Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 3,
            unratedColor: Colors.amber.withAlpha(10),
            direction: _isVertical ? Axis.vertical : Axis.horizontal,
          ),
        ]
      ),
    );
  }
}
