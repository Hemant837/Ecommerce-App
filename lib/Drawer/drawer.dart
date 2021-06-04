import 'package:chat_app/Drawer/Account.dart';
import 'package:chat_app/Drawer/Notification.dart';
import 'package:chat_app/homepage.dart';
import 'package:chat_app/login.dart';
import 'package:chat_app/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(),
                    decoration: BoxDecoration(color: Colors.cyan[50]),
                    accountName: Text(
                      'Hemant Verma',
                      style: TextStyle(
                          color: Colors.cyan[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    accountEmail: Text('vermahemant837@gmail.com',
                        style: TextStyle(color: Colors.grey, fontSize: 16))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.home,
                                color: Colors.blueGrey[100], size: 28),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.cyan[900], fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.notifications,
                                color: Colors.blueGrey[100], size: 28),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                    color: Colors.cyan[900], fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.dashboard,
                              color: Colors.blueGrey[100], size: 28),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'My Orders',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.favorite_border,
                              color: Colors.blueGrey[100], size: 28),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Wish List',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 220),
                    child: Text(
                      'Products',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[900],
                          fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.category,
                            color: Colors.blueGrey[100], size: 28),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                color: Colors.cyan[900], fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.folder_open,
                            color: Colors.blueGrey[100], size: 28),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Brands',
                            style: TextStyle(
                                color: Colors.cyan[900], fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Divider(
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 110),
                    child: Text(
                      'Application Preferences',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[900],
                          fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.help_outline,
                            color: Colors.blueGrey[100], size: 28),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Help & Support',
                            style: TextStyle(
                                color: Colors.cyan[900], fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.settings,
                              color: Colors.blueGrey[100], size: 28),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.public,
                            color: Colors.blueGrey[100], size: 28),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Languages',
                            style: TextStyle(
                                color: Colors.cyan[900], fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        signOut();
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back,
                              color: Colors.blueGrey[100], size: 28),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
