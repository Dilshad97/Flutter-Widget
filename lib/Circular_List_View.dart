import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {

  final List image=[
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
    {
    "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
  },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        shrinkWrap: true,
        itemBuilder: (context, int index) {
          return CircleAvatar(
            radius: 33,
            backgroundColor: Colors.teal,
            child: Container(
                padding: EdgeInsets.all(4),
                child: Image.asset(image[index]['images'])
            ),
          );


        },
      ),
    ));
  }
}
