import 'package:chat_app/files.dart';
import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  @override
  _IconScreenState createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  @override
  Widget build(BuildContext context) {
    
    final String lolo = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      body: Stack(
              children: <Widget>[
              Padding(
                 padding: EdgeInsets.only(top: 50),
                   child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.pop(context);
                    }   
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 260),
                  child: Row(
                    children: <Widget>[
                    IconButton(icon: Icon(Icons.local_mall,
                    color: Colors.orange), 
                    onPressed: (){}
                    ),
                    IconButton(icon: Icon(Icons.favorite,
                    color: Colors.red,
                    ), 
                    onPressed: (){})
                  ],
                  ),
                ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Container(
                height: 240,
                width: 180,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: shadowList,
               ),
                ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 430,left: 20),
              child: Text(lolo,
              style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 20),
              child: Row(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border,
                  color: Colors.red),
                   onPressed: (){}),
                  Container(
                   margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: 230,
                    child: FlatButton( 
                      color: Colors.pinkAccent,
                      shape: StadiumBorder(
                      ),
                      child: Text('Add To Cart', 
                      style: TextStyle(color:  Colors.white,
                      fontWeight: FontWeight.bold
                      ),
                      ),
                    onPressed: (){},
                    ),
                  ),
              ],
              ),
            ),
         ],
       ),
    );
  }
}