import 'package:chat_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final _notEmpty = GlobalKey<FormState>();
  final FirebaseAuth mAuth = FirebaseAuth.instance;
  String validatorEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return "Invalid Email";
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length > 0 && value.length < 8) {
      return "Password is to small";
    }
    if (value.isEmpty) {
      return "Password can't be empty";
    }
    return null;
  }

  void _validateAndSave() {
    final form = _notEmpty.currentState;
    if (form.validate()) {
      form.save();
      print("$_email");
      print("$_password");
      return validateAndSubmit();
    } else {
      print("form invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("check");
    return Material(
      color: Colors.cyan,
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(top: 1),
        child: Card(
          color: Colors.white,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 750,
            width: 370,
            child: ListView(children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.vpn_key,
                    size: 30.0,
                    color: Colors.white,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text("Log In",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Form(
                key: _notEmpty,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: TextFormField(
                        validator: validatorEmail,

                        onSaved: (value) => _email = value,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: deprecated_member_use
                        autovalidate: true,
                        cursorColor: Colors.cyan,
                        style: TextStyle(
                          color: Colors.cyan,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.cyan,
                          ),
                          hintText: 'Email Id',
                          hintStyle: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: TextFormField(
                        cursorColor: Colors.cyan,
                        validator: validatePassword,
                        onSaved: (value) => _password = value,
                        style: TextStyle(
                          color: Colors.cyan,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white60,
                          filled: true,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.cyan,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 30, right: 30),
                child: Center(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: RaisedButton(
                            onPressed: () {
                              _validateAndSave();
                            },
                            color: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Text("Log In",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "signup");
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold))))
            ]),
          ),
        ),
      )),
    );
  }

  void validateAndSubmit() async {
    try {
      dynamic userDefault = (await (mAuth.signInWithEmailAndPassword(
          email: _email, password: _password)));
      // ignore: unused_local_variable
      FirebaseUser user = (userDefault.user).then((value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    } catch (e) {
      print(e);
    }
  }
}
