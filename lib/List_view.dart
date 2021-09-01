import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoList extends StatefulWidget {
  const DemoList({Key? key}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  bool _Switchvalue = true;
  bool _visible = false;
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
    {
      "images": "assets/images/menu7.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
  ];
  final List nonvegitem = [
    {
      "images": "assets/images/menu1.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu2.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu3.jpg",
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
    {
      "images": "assets/images/menu5.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
    {
      "images": "assets/images/menu6.jpg",
      "Restaurant": " Anna Purna",
      "rating": "3.4",
      "location": "Narangpura",
      "price": "\u{20B9}${199} for one',",
    },
  ];

  ScrollController _scrollController = ScrollController();

  initState() {
    super.initState();

    _scrollController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Restaurant Chart"),
              actions: [
                Text(_visible == true ? 'Veg' : 'Non veg'),
                CupertinoSwitch(
                  value: _Switchvalue,
                  onChanged: (value) {
                    setState(() {
                      _visible = !_visible;
                    });
                    _Switchvalue = value;
                  },
                )
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: [

                  UserAccountsDrawerHeader(
                      accountName: Text("Dilshad alam"),
                      accountEmail: Text("dfsfkd#@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text('D'),
                      ))
                  ],
              ),
            ),
            body: SingleChildScrollView(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: vegitem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      // padding: EdgeInsets.all(5),
                      // height: MediaQuery.of(context).size.height / 2.5,
                      // width: MediaQuery.of(context).size.width /1.1,
                      child: Card(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(_Switchvalue == false
                                            ? vegitem[index]['images']
                                            : nonvegitem[index]['images'])),
                                  ),
                                  //padding: EdgeInsets.all(5),

                                  //padding: EdgeInsets.all(20),
                                  // child: Image.asset(_Switchvalue == false
                                  //     ? vegitem[index]['images']
                                  //     : nonvegitem[index]['images']),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(4),
                                    color: Colors.grey,
                                    height: 30,
                                    width: 70,
                                    child: Text(
                                      "Promoted",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(4),
                                    child: Icon(Icons.save),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Container(
                                    width: 80,
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(4),
                                    child:
                                        Text("% 60% off Up to \u{20B9}${120} "),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    color: Colors.grey,
                                    child: Text("25 mins"),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  vegitem[index]['Restaurant'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.all(1),
                                  color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Text(
                                        vegitem[index]['rating'],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(vegitem[index]['location']),
                                Text(vegitem[index]['price'])
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
