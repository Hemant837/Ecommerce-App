import 'package:flutter/material.dart';

class SeeMore extends StatefulWidget {
  @override
  _SeeMoreState createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Products')
        
      ),
    );
  }
}