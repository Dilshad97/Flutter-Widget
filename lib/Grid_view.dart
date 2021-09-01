import 'package:flutter/material.dart';

class GridView_Example extends StatelessWidget {
  const GridView_Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GridView",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.grid_view_outlined),
      ),
      body: GridView.count(
        crossAxisCount: 2,
       mainAxisSpacing: 5,
        //scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 5,
        reverse: false,
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        children: <Widget>[
          Container(
          child: Image.asset("assets/images/car.png"),
          ),
          Container(
          child: Image.asset("assets/images/menu1.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu2.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu3.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu4.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu5.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu7.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu8.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu9.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu10.jpg"),
          ),
          Container(
          child: Image.asset("assets/images/menu11.jpg"),
          ),

        ],
      ),
    );
  }
}