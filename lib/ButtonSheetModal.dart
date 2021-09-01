import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtomModel extends StatefulWidget {
  const ButtomModel({Key? key}) : super(key: key);

  @override
  _ButtomModelState createState() => _ButtomModelState();
}

class _ButtomModelState extends State<ButtomModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Modal Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Click Me"),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children:[
                          Container(
                            color: Colors.deepPurpleAccent,
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Union Station',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      "Los Angeles, California  25 mins",
                                      style: TextStyle(color: Colors.white,fontSize: 15),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  child: Image.asset("assets/images/car.png",height: 30,width: 30,),
                                  backgroundColor: Colors.white,

                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: Colors.deepPurple,
                                    ),
                                    Text("Call",
                                        style:
                                            TextStyle(color: Colors.deepPurple))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.home, color: Colors.deepPurple),
                                    Text("Website",
                                        style:
                                            TextStyle(color: Colors.deepPurple))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.share, color: Colors.deepPurple),
                                    Text('Share',
                                        style:
                                            TextStyle(color: Colors.deepPurple))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.deepPurple,
                                ),
                                Text(
                                  "   800 N Aalmeda St, Los Angeles, CA 90012",
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.alarm,
                                  color: Colors.deepPurple,
                                ),
                                Text(
                                  "   Open",
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.link,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "   http://www.uiniinstationla.com",
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.deepPurple,
                                ),
                                Text(
                                  "   +213 574473",
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Divider(thickness: 1,),
                          ElevatedButton(onPressed: (){

                            Navigator.pop(context);
                          }, child:Text("click"))
                        ],
                      );
                    });
              },

            ),
          ],
        ),
      ),
    ));
  }
}
