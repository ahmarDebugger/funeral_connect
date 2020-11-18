import 'package:flutter/material.dart';
import 'package:funeral_connect/config/theme.dart';
import 'package:funeral_connect/login/forgetpassword.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:funeral_connect/login/login.dart';
import 'package:progress_dialog/progress_dialog.dart';

AppThemeData theme = AppThemeData();
class CheckEmail extends StatelessWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();


  Widget _textSignIn()
  {  return Column(children: [
    SizedBox(height: 30,),
    Text('Check Your Email',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:Colors.white,),),
    SizedBox(height: 10,),
    Padding(  padding: EdgeInsets.symmetric(horizontal: 50),
      child: Text("It takes around 1-24 hour to set up a new password. Keep checking with your inboxx for more instructions.",
        style: TextStyle( fontSize: 15,color:Colors.white,),
        textAlign: TextAlign.center,
      ),
    ),
  ],);

  }
  Widget _mailLogo(){

    return Container(
      width: 250.0,

      child: Image.asset("images/mail_logo.png"),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(backgroundColor:theme.colorPrimary ,
        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(height: MediaQuery.of(context).size.height,
              child: Column(  mainAxisAlignment: MainAxisAlignment.end,
                children: [

                      _textSignIn(),
                      SizedBox(height: 50,),
                      _mailLogo(),
                  SizedBox(height: 10,),
                  Align( alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[


                            Padding(  padding: EdgeInsets.only(bottom: 30),
                              child: Row(  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: ()
                                    {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                    },
                                    child: Container(
                                      width: 300,
                                      padding: EdgeInsets.symmetric(vertical: 13,),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        border: Border.all(color: Colors.white, width: 2),
                                        boxShadow: <BoxShadow>[

                                        ],
                                        //color: Colors.white
                                      ),
                                      child: Text(
                                        'Back to Login',
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color: theme.colorPrimary),
                                      ),
                                    ),

                                  ),

                                ],
                              ),
                            ),



                          ],
                        ),
                      ),
                      decoration: new BoxDecoration(
                        color: theme.colorPrimary,
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
class _CheckEmailState extends State<ForgotScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context ) {
    // TODO: implement build
    throw UnimplementedError();
  }



}
