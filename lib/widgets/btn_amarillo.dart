import 'package:flutter/material.dart';

import '../constants/theme.dart';

class BtnAmarillo extends StatelessWidget {
  final String text;
  final Color color;

  const BtnAmarillo({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 80),
      child: ElevatedButton(
          child: Container(
            width: double.infinity,
            height: 55,
            child: Center(
              child: Text(this.text, style: TextStyle(color: SeriesAppColor.black, fontSize: 17),),
            ),
          ),
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              elevation: 2,
              backgroundColor: this.color,
              shape: StadiumBorder(),
          ),
      ),
    );
  }
}
