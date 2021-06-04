import 'package:chat_app/homepage.dart';
import 'package:chat_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey = GlobalKey<FormState>();
  String email;
  String password;
  String fullname;
  String number;

  bool validateAndSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      // ignore: unused_local_variable
      FirebaseUser user = (await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password))
          .user;
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    username: fullname,
                    phonenumber: number,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[400],
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30),
            child: Container(
              height: 590,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.cyan[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: TextFormField(
                            validator: (value) => value.isEmpty
                                ? 'Full name can\'t be empty'
                                : null,
                            onSaved: (value) => fullname = value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white30,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.cyan[600],
                              ),
                              hintText: 'Full name',
                              hintStyle: TextStyle(
                                  color: Colors.cyan[600], fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: TextFormField(
                            validator: (value) =>
                                value.isEmpty ? 'Email can\'t be empty' : null,
                            onSaved: (value) => email = value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white30,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.cyan[600],
                              ),
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                  color: Colors.cyan[600], fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: TextFormField(
                            validator: (value) => value.isEmpty
                                ? 'Password can\'t be empty'
                                : null,
                            onSaved: (value) => password = value,
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white30,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.cyan[600],
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.cyan[200],
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.cyan[600], fontSize: 15),
                            ),
                          ),
                        ),
                        /* Padding(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white30,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.cyan[600],
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.cyan[200],
                        ),
                        hintText: 'Confirm Password',
                        hintStyle:
                            TextStyle(color: Colors.cyan[600], fontSize: 15),
                      ),
                    ),
                  ), */
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: TextFormField(
                            validator: (value) => value.isEmpty
                                ? 'phone number can\'t be empty'
                                : null,
                            onSaved: (value) => number = value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white30,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.cyan[600],
                              ),
                              hintText: 'Phone number',
                              hintStyle: TextStyle(
                                  color: Colors.cyan[600], fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                      shape: StadiumBorder(),
                      color: Colors.cyan[600],
                      textColor: Colors.white,
                      onPressed: () {
                        validateAndSubmit();
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Or using social media',
                      style: TextStyle(color: Colors.cyan[900], fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 80),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/facebookk.jpg')),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/twitter.jpg')),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/googleplus.jpg')),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Already have an account ? Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
