/***
 * @author: Gopal Oswal
 * @date: 17 April, 2020
 * @description: SignUp Page
 */
import 'package:flutter/material.dart';
import 'package:crm/Models/user.dart';
import 'package:crm/Widgets/InputWidgetDecoration.dart';
import 'package:validators/validators.dart';
import 'package:crm/Providers/api.dart' as Api;
import 'package:fluttertoast/fluttertoast.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final user =  User('', '', '', '');
  final signUpForm = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  signUp() {

  }

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
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.25,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Form(
                        key: signUpForm,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text('Signup', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: MediaQuery.of(context).size.width / 1.75,
                                child: TextFormField(
                                  controller: usernameController,
                                  onSaved: (String name) {
                                      print('name' + name);
                                      user.name = name;
                                  },
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'This Field is required';
                                    }
                                    return null;
                                  },
                                  decoration: InputWidgetDecoration.inputWidgetDecoration(
                                    context,
                                    labelText: 'Enter Name',
                                    hintText: '',
                                    prefixIcon: new Icon(Icons.supervised_user_circle),
                                  )
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: MediaQuery.of(context).size.width / 1.75,
                                child: TextFormField(
                                    controller: emailController,
                                    validator: (value) {
                                      if (!isEmail(value)) {
                                        return 'Please Enter a valid email';
                                      }
                                      if (value.isEmpty) {
                                        return 'This Field is required';
                                      }
                                      return null;
                                    },
                                  decoration: InputWidgetDecoration.inputWidgetDecoration(
                                    context,
                                    labelText: 'Enter Email',
                                    hintText: '',
                                    prefixIcon: new Icon(Icons.email) ,
                                  )
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: MediaQuery.of(context).size.width / 1.75,
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  validator: (val) => val.length < 8 ? 'Password should greater than 8 character' : null,
                                  decoration: InputWidgetDecoration.inputWidgetDecoration(
                                    context,
                                    labelText: 'Enter password',
                                    hintText: '',
                                    prefixIcon: new Icon(Icons.vpn_key) ,
                                  )
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: MediaQuery.of(context).size.width / 1.75,
                                child: TextFormField(
                                  obscureText: true,
                                  controller: confirmPasswordController,
                                  validator: (val) => val.length < 8 ? 'Password should greater than 8 character' : null,
                                  decoration: InputWidgetDecoration.inputWidgetDecoration(
                                    context,
                                    labelText: 'Confirm password',
                                    hintText: '',
                                    prefixIcon: new Icon(Icons.security) ,
                                  )
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: FlatButton(
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text('Signup'),
                                  onPressed: () {
                                    if (signUpForm.currentState.validate()) {
                                      print(usernameController.text);
                                      print(emailController.text);
                                      print(passwordController.text);
                                      print(confirmPasswordController.text);
                                      if (passwordController.text == confirmPasswordController.text) {

                                      } else {
                                        Fluttertoast.showToast(
                                            msg: "Password Doesnot match",
                                            toastLength: Toast.LENGTH_LONG,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.redAccent,
                                            textColor: Colors.white,
                                            fontSize: 16.0
                                        );
                                      }
                                    }
//                                Navigator.pushNamed(context, '/home');
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
                  ),
                ),
              ]
          )
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}
