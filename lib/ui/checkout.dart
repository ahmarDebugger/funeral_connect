
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funeral_connect/config/theme.dart';

import 'package:progress_dialog/progress_dialog.dart';

import 'menu.dart';
AppThemeData theme = AppThemeData();

class CheckOut extends StatefulWidget {
  CheckOut({Key key, this.title}) : super(key: key);
  static const String id = 'home_screen';


  final String title;

  @override
  CheckOutState createState() => CheckOutState();


}
class CheckOutState extends State<CheckOut> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(backgroundColor: theme.colorPrimary,
        title: Text('Check Out'),
        leading: GestureDetector(child: Icon(Icons.arrow_back),
          onTap: (){
                  Navigator.pop(context);
          },),
      ),
      body: Center(
        child: Text('Check out'),
      ),
    );
  }
}