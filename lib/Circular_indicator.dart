import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading = false;

  void _onLoading() {
    setState(() {
      _loading = true;
      new Future.delayed(new Duration(seconds: 3), _login);
    });
  }


  Future _login() async{
    setState((){
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("demo"),
      ),
      body:Column(
        children: <Widget>[
          new Container(
            height: 40.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: new TextField(
              decoration: new InputDecoration.collapsed(hintText: "username"),
            ),
          ),
          new Container(
            height: 40.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(15.0),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: new TextField(
              decoration: new InputDecoration.collapsed(hintText: "password"),
            ),
          ),

      Column(
        children:[
          new Container(
            height: 40.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: new TextField(
              decoration: new InputDecoration.collapsed(hintText: "username"),
            ),
          ),
          new Container(
            height: 40.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(15.0),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: new TextField(
              decoration: new InputDecoration.collapsed(hintText: "password"),
            ),
          ),
        ],
      ),
      ],
    )




      // new Container(
      //     decoration: new BoxDecoration(
      //         color: Colors.blue[200]
      //     ),
      //     child: _loading ? CircularProgressIndicator() : C
      // ),
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: _onLoading,
      //   tooltip: 'Loading',
      //   child: new Icon(Icons.check),
      // ),
    );
  }
}