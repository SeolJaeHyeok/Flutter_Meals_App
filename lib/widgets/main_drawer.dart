import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/meal_detail_screen.dart';
import 'package:flutter_meals_app/screens/settings_screen.dart';
import 'package:flutter_meals_app/screens/tab_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  fontFamily: 'Raleway'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Categories',
            Icons.restaurant,
            () {
              //경로를 변수로 만드느냐 안만드느냐의 차이
              Navigator.of(context).pushReplacementNamed('/'); // Same
            },
          ),
          buildListTile(
            'Setting',
            Icons.settings,
            () {
              Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);// Same
            },
          ),
        ],
      ),
    );
  }
}
