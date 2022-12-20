import 'package:flutter/material.dart';

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
          const Padding(padding:
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
                child: _Form()
              ),

            ),
          )
        ],
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final userCrtl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(),
        TextFormField(
          style: const TextStyle(
            color: SeriesAppColor.secundary,
          ),
          controller: this.userCrtl,
          decoration: const InputDecoration(
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
          style: const TextStyle(
            color: SeriesAppColor.secundary,
          ),
          controller: this.passCtrl,
          decoration: const InputDecoration(
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
        ElevatedButton(
          child: Container(
            width: double.infinity,
            height: 55,
            child: Center(
              child: Text('Login', style: TextStyle(color: SeriesAppColor.black, fontSize: 17),),
            ),
          ),
          onPressed: (){
            if(userCrtl.text == 'maria' && passCtrl.text == 'password' ){
              Navigator.pushReplacementNamed(context, 'tabPages');
            }else if(userCrtl.text == 'pedro' && passCtrl.text == '123456'){
              Navigator.pushReplacementNamed(context, 'tabPages');
            }else{
              Navigator.pushReplacementNamed(context, 'welcome');
            }
          },
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: SeriesAppColor.white,
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}

