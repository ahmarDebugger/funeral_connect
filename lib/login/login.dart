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
import 'package:funeral_connect/ui/welcome.dart';

import 'package:progress_dialog/progress_dialog.dart';

AppThemeData theme = AppThemeData();

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  String userEmail, userPassword;
  final _auth = FirebaseAuth.instance;
  bool emailValidator = false;
  bool passwordValidator = false;
  bool agrementBox = false;
  bool dataUploaded = false;
  String checkDataUploaded;
  bool obscureText = true;
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  //
  //
  //
  @override
  void initState() {
    super.initState();
  }

  Widget _title() {
    return Container(
      width: 150.0,

      //child: Image.asset('images/title2.png'),
      child: Center(
          child: Text("Logo here",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ))),
    );
  }

  Widget _textSignIn() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Welcome Back',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _forgotPass() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(
        width: 15,
      ),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Forget Password?',
                style: TextStyle(color: theme.colorPrimary),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotScreen()));
                  }),
          ],
        ),
      ),
    ]);
  }

  Widget _createAcc() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Don\'t Have an Account?',
          style: TextStyle(color: Colors.black),
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateAccountScreen()));
          },
          child: Text(
            'Signup',
            style: TextStyle(
                color: theme.colorPrimary,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: theme.colorPrimary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(height: 10,),
                  _textSignIn(),
                  _title(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                  validator: (value) {
                                    if (userEmail == null) {
                                      return 'Required';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    userEmail = value;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.mail_outline,
                                        color: theme.colorPrimary,
                                      ),

                                      // suffixIcon: icn2,
                                      hintText: 'Email',
                                      fillColor: Color(0xfff3f3f4),
                                      filled: true)),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                  onChanged: (value) {
                                    userPassword = value;
                                  },
                                  validator: (value) {
                                    if (userPassword == null) {
                                      return 'Required';
                                    }
                                    return null;
                                  },
                                  obscureText: obscureText,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.lock_outline,
                                          color: theme.colorPrimary),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          obscureText
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: theme.colorPrimary,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            obscureText = !obscureText;
                                          });
                                        },
                                      ),
                                      // suffixIcon: icn2,
                                      hintText: 'Password',
                                      fillColor: Color(0xfff3f3f4),
                                      filled: true)),

                              // _agrementText(true),/// aggremtnt
                              SizedBox(
                                height: 10,
                              ),
                              _forgotPass(),

                              /// Forget PAss
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // if(_formKey.currentState.validate())
                                      // {
                                      // try{
                                      //   loginFirebaseFunction(userEmail, userPassword);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WelcomeScreen()));
                                      // }catch(e){    print('>>>>>>>>>>>>>'+e.message);
                                      // Fluttertoast.showToast(
                                      //     msg: e.message,
                                      //     toastLength: Toast.LENGTH_LONG,
                                      //     gravity: ToastGravity.TOP,
                                      //     timeInSecForIosWeb: 1,
                                      //     backgroundColor: Colors.black87,
                                      //     textColor: Colors.white,
                                      //     fontSize: 16.0
                                      // );
                                      //
                                      // }
                                    },
                                    // }  : () {
                                    //   Fluttertoast.showToast(
                                    //       msg: 'You should accept our terms and conditions',
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.TOP,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.black87,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.0
                                    //   );
                                    // },
                                    child: Container(
                                      width: 300,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 13,
                                      ),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: theme.colorPrimary,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        boxShadow: <BoxShadow>[],
                                        //color: Colors.white
                                      ),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              _createAcc(),
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

  void loginFirebaseFunction(String email, String password) async {
    ProgressDialog pr = ProgressDialog(context);
    pr = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: true);

    try {
      await pr.show();
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      String currentUserID = (await FirebaseAuth.instance.currentUser()).uid;
      await Firestore.instance
          .collection('patient')
          .document(currentUserID)
          .get()
          .then((onValue) {
        print(onValue.data['data_uploaded']);
        setState(() {
          checkDataUploaded = onValue.data['data_uploaded'];
          if (checkDataUploaded == 'true') {
            setState(() {
              dataUploaded = true;
            });
          } else {
            setState(() {
              dataUploaded = false;
            });
          }
        });
      });
      await pr.hide();
      if (user != null) {
        if (dataUploaded == true) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else if (dataUploaded == false) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => PatientDetails2()));
        }
      }
    } catch (e) {
      await pr.hide();
      Fluttertoast.showToast(
          msg: e.message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black87,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
