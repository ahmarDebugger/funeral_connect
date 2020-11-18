import 'package:flutter/material.dart';
import 'package:funeral_connect/config/theme.dart';
AppThemeData theme = AppThemeData();
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: theme.colorPrimary, width: MediaQuery.of(context).size.width-100,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  'Guest Account',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
              decoration: BoxDecoration(
                  color: theme.colorPrimary,

                 ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.add_box_outlined),
              title: Text('Schedule a funeral'),
              onTap: () => {},
            ),

            ListTile(
              leading: Icon(Icons.graphic_eq_sharp),
              title: Text('Active Orders'),
              onTap: () => {Navigator.of(context).pop()},
            ),


            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text('profile'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile( selectedTileColor: theme.colorPrimary,
              leading: Icon(Icons.add),
              title: Text('Create Account'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(

              title: Center(child: Text('_____________________')),

            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Sign Out'),
              onTap: () => {Navigator.of(context).pop()},
            ),

          ],
        ),
      ),
    );
  }
}