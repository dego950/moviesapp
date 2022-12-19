import 'package:flutter/material.dart';
import 'package:moviesapp/widgets/btn_amarillo.dart';

import '../constants/theme.dart';

class LoginPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional(0,0),
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/art-business-tecnology.appspot.com/o/screen.jpg?alt=media&token=727556a6-43fb-4686-b081-5127795b82f5'),
                    scale: 05,
                    opacity: 30,
                    fit: BoxFit.fill)
            ),
          ),
          Padding(padding:
          EdgeInsetsDirectional.fromSTEB(0, 40, 0, 610),
            child: Text('welcomen!', style: TextStyle(color: SeriesAppColor.white, fontSize: 30,),),
          ),
          Align(
            alignment: AlignmentDirectional(0,1),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(18), topLeft: Radius.circular(18)),
                color: Color.fromARGB(216, 7, 6, 6),
              ),
              width: double.infinity,
              height: 350,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 30) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(),
                    TextFormField(
                      style: TextStyle(
                        color: SeriesAppColor.secundary,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: SeriesAppColor.secundary,
                            width: 2
                          )
                        ),
                        hintStyle: TextStyle(color: SeriesAppColor.secundary)
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: SeriesAppColor.secundary,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: SeriesAppColor.secundary,
                                  width: 2
                              )
                          ),
                          hintStyle: TextStyle(color: SeriesAppColor.secundary)
                      ),
                    ),
                    BtnAmarillo(
                        text: 'Login In', color: SeriesAppColor.white)
                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}
