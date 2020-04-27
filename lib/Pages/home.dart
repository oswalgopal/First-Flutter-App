import 'package:crm/Widgets/sideMenu.dart';
/***
 * @author: Gopal Oswal
 * @date: 17 April, 2020
 * @description: Home Page
 */
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SafeArea(
          child: Text('Hello Home page')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
