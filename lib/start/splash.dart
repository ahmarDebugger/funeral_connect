
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:funeral_connect/config/theme.dart';

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funeral_connect/config/theme.dart';
import 'package:funeral_connect/login/createaccount.dart';
import 'package:funeral_connect/login/forgetpassword.dart';
import 'package:funeral_connect/login/login.dart';
import 'package:funeral_connect/ui/mainscreen.dart';

import 'package:progress_dialog/progress_dialog.dart';




AppThemeData theme = AppThemeData();

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();


  }
  startTime() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, _startNextScreen);
  }
  FirebaseUser currentUser;
  _startNextScreen() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
    // currentUser = await FirebaseAuth.instance.currentUser();
    //
    // print(currentUser);
    // if (currentUser!= null) {
    //   print("User Present");
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => MainScreen()));
    //   }
    //
    // else
    // {
    //   print("User Absent");
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => LoginScreen()));
    // }
  }

  Widget _textSignIn()
  { return Column(children: [
    SizedBox(height: 30,),
    Text('Funeral Connect',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color:Colors.white,),)
  ],);

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(backgroundColor:theme.colorPrimary ,
        body:SafeArea(
          child: Container(
            width:  MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 10,),
                _textSignIn(),


              ],
            ),
          ),
        ));
  }

  ////////////////////////////////////////////////////////////////
  //
  //
  //
}