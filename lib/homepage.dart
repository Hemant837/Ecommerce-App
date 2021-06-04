import 'package:chat_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String username;
  String phonenumber;
  HomePage({this.username, this.phonenumber});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: Drawers(),
      appBar: AppBar(
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
          'Homepage',
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
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Car',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Cycle',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Properties',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Led Tv',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Furniture',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Guitar',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style: TextStyle(
                    color: Colors.cyan[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: SizedBox(
              height: 230.0,
              width: 380.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                autoplayDuration: Duration(seconds: 4),
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Colors.cyan[900],
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  ExactAssetImage("assets/adds/soni.jpg"),
                  ExactAssetImage("assets/googleplus.jpg"),
                  ExactAssetImage("assets/twitter.jpg"),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 150,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return categories[index];
                },
              ),
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20),
            child: Text(
              'Frequently Bought',
              style: TextStyle(
                color: Colors.cyan[900],
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              height: 280,
              width: 100,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: frequentlyBought.length,
                itemBuilder: (BuildContext context, int index) {
                  return frequentlyBought[index];
                },
              ),
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Top searched mobiles',
              style: TextStyle(
                  color: Colors.cyan[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text('Hello')),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
      
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('Hello'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 5,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Listhorizontal1 extends StatelessWidget {
  String images, productName;
  Listhorizontal1({this.images, this.productName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20, top: 8),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  image: AssetImage(images)),
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22),
          child: Text(
            productName,
            style:
                TextStyle(color: Colors.cyan[900], fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class Listhorizontal extends StatelessWidget {
  String subcategoriesimage, productName;
  var productMRP, productSP;

  Listhorizontal(
      {this.subcategoriesimage,
      this.productMRP,
      this.productName,
      this.productSP});
  @override
  Widget build(BuildContext context) {
    var discount = (((productMRP - productSP) / productMRP) * 100).round();

    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
            color: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 170,
                  child: Image(
                    image: AssetImage(subcategoriesimage),
                    fit: BoxFit.cover,
                    width: 140,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 180, left: 7),
                child: Text(
                  "$productName",
                  style: TextStyle(
                    color: Colors.cyan[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200, left: 7),
                child: Text(
                  "₹ $productSP",
                  style: TextStyle(
                    color: Colors.cyan[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 224, left: 7),
                child: Text(
                  " MRP :₹$productMRP",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Container(
                  height: 38,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.cyan[400]),
                  child: Center(
                    child: Text(
                      "$discount%",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}

List<Listhorizontal1> categories = [
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/car.png',
    productName: 'Cars',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/cycle.png',
    productName: 'Cycle',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/mobile.png',
    productName: 'Mobile',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/properties.png',
    productName: 'Properties',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/tv.png',
    productName: 'LED Tv',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/furniture.png',
    productName: 'Furniture',
  ),
  Listhorizontal1(
    images: 'assets/categoriesbeforelistview/guitar.png',
    productName: 'Guitar',
  )
];

List<Listhorizontal> frequentlyBought = [
  Listhorizontal(
    subcategoriesimage: "assets/categories/Frequently bought/image1.jpg",
    productName: "Lakme",
    productMRP: 200,
    productSP: 130,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/Frequently bought/image2.jpg",
    productName: "Hotcase",
    productSP: 1200,
    productMRP: 1500,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/Frequently bought/image3.jpg",
    productName: "Pixel Cam",
    productMRP: 7000,
    productSP: 5000,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/Frequently bought/image4.jpg",
    productName: "Samsung Galaxy A15",
    productMRP: 30000,
    productSP: 23000,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/Frequently bought/image5.jpg",
    productName: "Iphone 10s Max",
    productMRP: 105000,
    productSP: 53000,
  ),
];
