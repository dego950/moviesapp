import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';
import 'package:moviesapp/widgets/btn_amarillo.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
          Padding(padding: const EdgeInsets.all(12),
            child: Container(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: const <Widget>[
                    Padding(padding:
                    EdgeInsetsDirectional.fromSTEB(0, 40, 0, 220),
                      child: Text('welcomen!', style: TextStyle(color: SeriesAppColor.white, fontSize: 30,),),
                    ),
                    Padding(padding:
                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: BtnAmarillo(
                        color: SeriesAppColor.primary,
                        text: 'Sing Up',
                      ),
                    ),
                    Padding(padding:
                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: BtnAmarillo(
                        color: SeriesAppColor.white,
                        text: 'Log In',
                      ),
                    ),
                    Padding(padding:
                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text('Forgot password?', style: TextStyle(
                        color: SeriesAppColor.white,
                        decoration: TextDecoration.underline,
                        fontSize: 20,),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
