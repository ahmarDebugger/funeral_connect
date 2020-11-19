
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funeral_connect/config/theme.dart';

import 'package:progress_dialog/progress_dialog.dart';

import 'menu.dart';
AppThemeData theme = AppThemeData();

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  static const String id = 'home_screen';


  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();


}
class _MainScreenState extends State<MainScreen> {
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
        title: Text('Funeral Connect'),
      ),
      body: GridView.count(

        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Service Name"),
            color: theme.colorPrimary,
          ),

        ],

      ),
    );
  }

}