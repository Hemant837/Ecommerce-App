import 'package:chat_app/main.dart';
import 'package:chat_app/signup.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.deepOrange[400],
                  Colors.pink[700],
                ],
                    stops: [
                  0.3,
                  0.7
                ])),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150, left: 130),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.white, Colors.blueGrey[100], Colors.white],
                    stops: [0.3, 0.5, 0.7]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              height: 80,
              width: 80,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 450, left: 70),
            child: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.pink[700],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              height: 70,
              width: 70,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 540, left: 86),
            child: Row(children: <Widget>[
              Text(
                'Login',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 450, left: 220),
            child: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    size: 28,
                    color: Colors.pink[700],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              height: 70,
              width: 70,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 540, left: 234),
            child: Row(children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
