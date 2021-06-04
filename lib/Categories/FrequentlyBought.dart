import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: must_be_immutable
class FrequentlyBought extends StatefulWidget {
  String productname;
  String image;
  int sp;
  int mrp;
  FrequentlyBought({
    this.image,
    this.productname,
    this.sp,
    this.mrp,
  });
  @override
  _FrequentlyBoughtState createState() => _FrequentlyBoughtState();
}

class _FrequentlyBoughtState extends State<FrequentlyBought> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
      } else {
        _counter--;
      }
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 350),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.cyan[900],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 230.0,
                      width: 370.0,
                      child: Carousel(
                        boxFit: BoxFit.fill,
                        autoplay: false,
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
                          ExactAssetImage(
                              "assets/categories/vegetables/radish.jpg"),
                          ExactAssetImage(
                              "assets/categories/vegetables/radish.jpg"),
                          ExactAssetImage(
                              "assets/categories/vegetables/radish.jpg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 325),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.cyan[900],
                            ),
                            onPressed: () {}),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 180, left: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            icon: Icon(Icons.favorite, color: Colors.redAccent),
                            onPressed: () {}),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Text(
                    "Radish",
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '₹ 400',
                        style: TextStyle(
                            color: Colors.cyan[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          '20% Off',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.1),
                                  left: BorderSide(
                                      color: Colors.grey, width: 0.4),
                                  right: BorderSide(
                                      color: Colors.grey, width: 0.4),
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 0.4))),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: RawMaterialButton(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                    onPressed: () {
                                      _decrementCounter();
                                    }),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, top: 5),
                                child: Text(
                                  '$_counter',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: RawMaterialButton(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                    onPressed: () {
                                      _incrementCounter();
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 2,
                    color: Colors.grey[200],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 350),
                  child: Text(
                    'Info',
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      'Domain info has been the most successful of the seven new domain names, with over 5.2 million domain names in the registry as of April 2008. After the September 11, 2001 attacks in the United States, the Metropolitan Transportation Authority of New York switched to the easier to remember mta.info website to lead users to latest information on schedules and route changes on the areas transportation services. ICANN and Afilias have also sealed an agreement for country names to be reserved by ICANN under resolution 01.92.'),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 2,
                    color: Colors.grey[200],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(fontSize: 16),
                          ),
                
                          ),
                          ),
      
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: FlatButton(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {})),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 290),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      'Domain info has been the most successful of the seven new domain names, with over 5.2 million domain names in the registry as of April 2008. After the September 11, 2001 attacks in the United States, the Metropolitan Transportation Authority of New York switched to the easier to remember mta.info website to lead users to latest information on schedules and route changes on the areas transportation services. ICANN and Afilias have also sealed an agreement for country names to be reserved by ICANN under resolution 01.92.'),
                ),
              ],
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[200],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    'Items related to this',
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170),
                  child: Text(
                    'More',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(
                height: 280,
                width: 100,
                child: GestureDetector(
                  onTap: () {},
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
            )
          ],
        ),
      ),
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
                  " MRP: ₹$productMRP",
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

List<Listhorizontal> frequentlyBought = [
  Listhorizontal(
    subcategoriesimage: "assets/categories/vegetables/radish.jpg",
    productName: "Radish",
    productMRP: 200,
    productSP: 130,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/vegetables/Broccoli.jpg",
    productName: "Broccoli",
    productSP: 1200,
    productMRP: 1500,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/vegetables/carrot.jpg",
    productName: "Carrot",
    productMRP: 7000,
    productSP: 5000,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/vegetables/Cauliflower.jpg",
    productName: "Cauliflower",
    productMRP: 30000,
    productSP: 23000,
  ),
  Listhorizontal(
    subcategoriesimage: "assets/categories/vegetables/tomato.jpg",
    productName: "Tomato",
    productMRP: 105000,
    productSP: 53000,
  ),
];
