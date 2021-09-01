import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GgridViewbuilder extends StatefulWidget {
  const GgridViewbuilder({Key? key}) : super(key: key);

  @override
  _GgridViewbuilderState createState() => _GgridViewbuilderState();
}

class _GgridViewbuilderState extends State<GgridViewbuilder> {
  // bool _Switchvalue = true;
  // bool _visible = false;
  final List vegitem = [
    {
      "images": "assets/images/menu8.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu9.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu10.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu11.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu4.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    // {
    //   "images": "assets/images/menu7.jpg",
    //   "Restaurant": " Anna Purna",
    //   "rating": "3.4",
    //   "location": "Narangpura",
    //   "price": "\u{20B9}${199} for one',",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Grid View Buildeer"),
        leading: Icon(Icons.grid_view_outlined),
      ),
      body: Container(

        //padding: EdgeInsets.all(40),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: vegitem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,


          ),
          itemBuilder: (context, index) {
            return Container(
              child: CircleAvatar(child: Image.asset(vegitem[index]['images'],height: 50,width: 50,)),
            );
          },
        ),
      ),
    ));
  }
}
