/***
 * @author: Gopal Oswal
 * @date: 17 April, 2020
 * @description: SignUp Page
 */

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height / 2.05, color: Colors.blueAccent),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height / 2.05, color: Colors.blueAccent),
                        ],
                      ),
                    ],),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  left: MediaQuery.of(context).size.width / 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.25,
                    height: MediaQuery.of(context).size.height / 1.8,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Text('Signup', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter Name',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20
                                ),
                                fillColor: Colors.blue,
                                prefixIcon: new Icon(Icons.supervised_user_circle),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'username / email',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20
                                ),
                                fillColor: Colors.blue,
                                prefixIcon: new Icon(Icons.email),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: TextFormField(
                              obscureText: true,
                              validator: (val) => val.length < 6 ? 'sdkfjskdlfj' : null,
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20
                                ),
                                fillColor: Colors.blue,
                                prefixIcon: new Icon(Icons.vpn_key),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: TextFormField(
                              obscureText: true,
                              validator: (val) => val.length < 6 ? 'sdkfjskdlfj' : null,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20
                                ),
                                fillColor: Colors.blue,
                                prefixIcon: new Icon(Icons.security),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text('Signup'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text('Already user Login', style: TextStyle(
                                fontSize: 11
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          )
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}
