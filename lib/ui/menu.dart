import 'package:flutter/material.dart';
import 'package:funeral_connect/config/theme.dart';
import 'package:funeral_connect/login/createaccount.dart';
import 'package:funeral_connect/login/login.dart';
import 'package:funeral_connect/ui/activeorders.dart';
import 'package:funeral_connect/ui/cart.dart';
import 'package:funeral_connect/ui/mainscreen.dart';
import 'package:funeral_connect/ui/profile.dart';
import 'package:funeral_connect/ui/schedulefuneral.dart';
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
              leading: Icon(Icons.home_outlined,color: theme.colorPrimary,),
              title: Text('Home'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MainScreen()))

              },
            ),
            ListTile(
              leading: Icon(Icons.add_box_outlined,color: theme.colorPrimary,),
              title: Text('Schedule a funeral'),
              onTap: () => {
              Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ScheduleFuneral()))
              },
            ),

            ListTile(
              leading: Icon(Icons.graphic_eq_sharp ,color: theme.colorPrimary,),
              title: Text('Active Orders'),
              onTap: () => {Navigator.of(context).pop(),
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => ActiveOrders()))
              },
            ),

            ListTile(
              leading: Icon(Icons.add_shopping_cart,color: theme.colorPrimary,),
              title: Text('My Cart'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()))

              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded,color: theme.colorPrimary,),
              title: Text('profile'),
              onTap: () => { Navigator.of(context).pop(),
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Profile()))
              },
            ),
            // ListTile( selectedTileColor: theme.colorPrimary,
            //   leading: Icon(Icons.add),
            //   title: Text('Create Account'),
            //   onTap: () => {Navigator.of(context).pop(),
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (context) => CreateAccountScreen()))
            //   },
            // ),
                Padding(  padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(color: theme.colorPrimary,thickness: 0.8,)),
            ListTile(
              leading: Icon(Icons.login_outlined,color: theme.colorPrimary,),
              title: Text('Sign Out'),
              onTap: () => {Navigator.of(context).pop(),
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()))
               //signOut
              },
            ),

          ],
        ),
      ),
    );
  }
}