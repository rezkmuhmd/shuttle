import 'package:flutter/material.dart';
import 'package:shuttle_meal_app/pages/home/home_product.dart';
import 'package:shuttle_meal_app/pages/signup/location_screen.dart';
import 'package:shuttle_meal_app/pages/signup/search.dart';

import 'package:shuttle_meal_app/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shuttle Meal App',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kaccentColor,
          scaffoldBackgroundColor: kWhiteColor,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              subtitle1: TextStyle(fontWeight: FontWeight.bold),
              subtitle2: TextStyle(color: Color(0xFF9097A6)))),
      home: LocationScreen(),
      routes: {
        LocationScreen.locationRouteName: (context) => LocationScreen(),
        SignUpSearch.signUpSearchRoutename: (context) => SignUpSearch(),
        HomeProduct.homeProductRouteName: (context) => HomeProduct()
      },
    );
  }
}
