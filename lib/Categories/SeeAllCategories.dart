import 'package:chat_app/Categories/SubCategories/CarsCategories.dart';
import 'package:flutter/material.dart';

class SeeAllCatogries extends StatefulWidget {
  @override
  _SeeAllCatogriesState createState() => _SeeAllCatogriesState();
}

class _SeeAllCatogriesState extends State<SeeAllCatogries> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.cyan[900],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CarsSubCategories()));
                    },
                    child: ListTile(
                      leading: Container(
                        margin: EdgeInsets.only(left: 20, top: 8),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/categoriesbeforelistview/car.png')),
                            color: Colors.cyan[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                      ),
                      title: Text(
                        'Cars',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      subtitle: Text(
                        'You find any type of Cars here',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/cycle.png')),
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Cycles',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Cycles here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/mobile.png')),
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Mobiles',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Mobiles here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/properties.png')),
                          color: Colors.lime[200],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Properties',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Properties here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/tv.png')),
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Led Tv\'s',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Led Tv\'s here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/furniture.png')),
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Furnitures',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Furniture\'s here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/guitar.png')),
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Instruments',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Instruments here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/car.png')),
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Cars',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Cars here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/cycle.png')),
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Cycles',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Cycles here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/mobile.png')),
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Mobiles',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Mobiles here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/properties.png')),
                          color: Colors.lime[200],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Properties',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Properties here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/tv.png')),
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Led Tv\'s',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Led Tv\'s here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/furniture.png')),
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Furnitures',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Furniture\'s here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(left: 20, top: 8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/categoriesbeforelistview/guitar.png')),
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    title: Text(
                      'Instruments',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'You find any type of Instruments here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
