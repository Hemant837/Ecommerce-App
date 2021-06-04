import 'package:chat_app/Drawer/drawer.dart';
import 'package:chat_app/settings.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  final formkey = GlobalKey<FormState>();
  String _value;
  List gender = ['Male', 'Female'];
  bool validateAndSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        drawer: Drawers(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.cyan[900]),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {})
          ],
          leading: IconButton(
              icon: Icon(
                Icons.sort,
                color: Colors.cyan[900],
              ),
              onPressed: () {
                scaffoldkey.currentState.openDrawer();
              }),
          backgroundColor: Colors.white,
          title: Text(
            'Account',
            style: TextStyle(color: Colors.cyan[900]),
          ),
          elevation: 0,
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  cursorColor: Colors.cyan[900],
                  decoration: InputDecoration(
                      fillColor: Colors.cyan[100],
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.cyan[900],
                      ),
                      hintText: 'Search',
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 55),
                          child: Text('Hemant Verma',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 38)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 130),
                          child: Text('vermahemant837@gmail.com',
                              style: TextStyle(
                                  color: Colors.cyan[900], fontSize: 13)),
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 30,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                    elevation: 4,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: Container(
                      height: 90,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 34),
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.blueGrey,
                                      size: 26,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  'Wish List',
                                  style: TextStyle(
                                      color: Colors.cyan[900], fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 70),
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.star_outline,
                                      color: Colors.grey,
                                      size: 26,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Colors.cyan[900], fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 70),
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.message_outlined,
                                      color: Colors.grey,
                                      size: 26,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  'Messages',
                                  style: TextStyle(
                                      color: Colors.cyan[900], fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Container(
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.analytics_outlined,
                                  color: Colors.grey),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'My Orders',
                                style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 210),
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  color: Colors.cyan[900],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 330),
                          child: Text(
                            'Unpaid',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 280),
                          child: Text(
                            'To be shipped',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 320),
                          child: Text(
                            'Shipped',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 310),
                          child: Text(
                            'In dispute',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Container(
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Profile Settings',
                                style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .person_outline_outlined,
                                                    color: Colors.grey,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20),
                                                    child: Text(
                                                      'Profile Setings',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.cyan[900],
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Form(
                                                key: formkey,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 30, right: 160),
                                                      child: Text('Full name',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .cyan[900],
                                                            fontSize: 15,
                                                          )),
                                                    ),
                                                    TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Colors.white30,
                                                        filled: true,
                                                        hintStyle: TextStyle(
                                                            color: Colors
                                                                .cyan[900],
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 30, right: 190),
                                                      child: Text('Email',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .cyan[900],
                                                            fontSize: 15,
                                                          )),
                                                    ),
                                                    TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Colors.white30,
                                                        filled: true,
                                                        hintStyle: TextStyle(
                                                            color: Colors
                                                                .cyan[900],
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 30, right: 180),
                                                      child: Text('Gender',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .cyan[900],
                                                            fontSize: 15,
                                                          )),
                                                    ),
                                                    DropdownButton(
                                                        hint: Text(
                                                          'Gender',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .cyan[900]),
                                                        ),
                                                        iconEnabledColor:
                                                            Colors.cyan[900],
                                                        isExpanded: true,
                                                        elevation: 4,
                                                        value: _value,
                                                        onChanged: (value) {
                                                          setState(
                                                            () {
                                                              value = _value;
                                                            },
                                                          );
                                                        },
                                                        items:
                                                            gender.map((value) {
                                                          return DropdownMenuItem(
                                                              value: value,
                                                              child: Text(
                                                                value,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .cyan[
                                                                        900]),
                                                              ));
                                                        }).toList()),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 180),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 310),
                          child: Text(
                            'Full name',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 340),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 330),
                          child: Text(
                            'Gender',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 310),
                          child: Text(
                            'Birth Date',
                            style: TextStyle(
                              color: Colors.cyan[900],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Container(
                    height: 250,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.grey,
                                size: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Settings()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: Colors.cyan[900],
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_city_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.public,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Languages',
                                  style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Help & Support',
                                  style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 16,
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
              ),
            ]),
      ),
    );
  }
}
