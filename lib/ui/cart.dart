
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funeral_connect/config/theme.dart';
import 'package:funeral_connect/ui/checkout.dart';
import 'package:funeral_connect/ui/mainscreen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'menu.dart';
AppThemeData theme = AppThemeData();

class Cart extends StatefulWidget {
  Cart({Key key, this.title}) : super(key: key);
  static const String id = 'home_screen';


  final String title;

  @override
  CartState createState() => CartState();


}
class CartState extends State<Cart> {
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
      drawer: NavDrawer(),
      appBar: AppBar(backgroundColor: theme.colorPrimary,
        title: Text('My Cart'),
      ),
      body: Padding(  padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text('My Cart'),
            ),
          GestureDetector(
            child: Container(  width:  MediaQuery.of(context).size.width-50,
                        height: 50,
                      decoration: BoxDecoration(color: theme.colorPrimary,
               borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Check out",style: TextStyle(color: Colors.white,fontSize: 20))),
            ),
            onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => CheckOut()));
            },
          ),
          ],
        ),
      ),
    );
  }


}