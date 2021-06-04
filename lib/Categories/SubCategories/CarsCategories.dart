import 'package:flutter/material.dart';

class CarsSubCategories extends StatefulWidget {
  @override
  _CarsSubCategoriesState createState() => _CarsSubCategoriesState();
}

class _CarsSubCategoriesState extends State<CarsSubCategories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 410,
                    decoration: BoxDecoration(
                      color: Colors.cyan[100],
                      image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          image: AssetImage(
                              'assets/categoriesbeforelistview/car.png')),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
