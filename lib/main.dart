/***
 * @author: Gopal Oswal
 * @date: 17 April, 2020
 * @description: Main Dart File as App.js we have in react
 */

import 'package:crm/Signup.dart';
import 'package:crm/login.dart';
import 'package:flutter/material.dart';
import 'package:crm/home.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/home': (context) => Home(),
      '/signup': (context) => Signup(),
    },
));




