
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
import 'package:funeral_connect/ui/mainscreen.dart';

import 'package:progress_dialog/progress_dialog.dart';

AppThemeData theme = AppThemeData();



class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();


  }
  Widget _textSignIn()
  { return Column(children: [
    SizedBox(height: 30,),
    Text('Welcome To',style: TextStyle( fontSize: 25,color:Colors.black,),)
  ],);}

  Widget _title(){
    return Container(
      width: 150.0,

      //child: Image.asset('images/title2.png'),
      child: Center(child: Text("Logo here",style:
      TextStyle( fontSize: 20,color:Colors.black,))),
    );

  }
  Widget _textAppName(){
    return Container(



      child: Center(child: Text("Funeral Connect",style:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color:Colors.black,))),
    );

  }
  Widget _textAfterAppName(){
    return Container(



      child: Center(child: Text("The app for your home maintenance needs.",style:
      TextStyle( fontSize: 15,color:Colors.black,))),
    );

  }
  Widget _startSelectingText(){
    return Container(



      child: Center(child: Text("Start by selecting your preferred language",
          style: TextStyle( fontSize: 15,color:Colors.black,))),
    );

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(backgroundColor:Colors.white ,
        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(height: MediaQuery.of(context).size.height,
              child: Column(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Column(
                   children: [
                     SizedBox(height: 20,),
                     _textSignIn(),
                     SizedBox(height: 20,),
                     _title(),
                     SizedBox(height: 20,),
                     _textAppName(),
                     SizedBox(height: 20,),
                     _textAfterAppName(),
                   ],
                 ),
                  Align( alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                                _startSelectingText(),
                              SizedBox(height: 15,),
                              Row(  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: ()
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainScreen()));
                                      },

                                       child: Container(
                                      width: 300,
                                      padding: EdgeInsets.symmetric(vertical: 13,),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(color: theme.colorPrimary,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        border: Border.all(color: theme.colorPrimary, width: 2),
                                        boxShadow: <BoxShadow>[

                                        ],
                                        //color: Colors.white
                                      ),
                                      child: Text(
                                        'English',
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color: Colors.white),
                                      ),
                                    ),

                                  ),

                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: ()
                                    {

                                    },

                                    child: Container(
                                      width: 300,
                                      padding: EdgeInsets.symmetric(vertical: 13,),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(color: theme.colorPrimary,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        border: Border.all(color: theme.colorPrimary, width: 2),
                                        boxShadow: <BoxShadow>[

                                        ],
                                        //color: Colors.white
                                      ),
                                      child: Text(
                                        'Arabic',
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color: Colors.white),
                                      ),
                                    ),

                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }


}
