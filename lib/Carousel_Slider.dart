import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderBAnner extends StatefulWidget {
  const SliderBAnner({Key? key}) : super(key: key);

  @override
  _SliderBAnnerState createState() => _SliderBAnnerState();
}

class _SliderBAnnerState extends State<SliderBAnner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  child: Text('heoloo'),
                ),
                Container(
                  child: Text('heoloo'),
                ),
                Container(
                  child: Text('fgdh'),
                ),
                Container(
                  child: Text('heosssssfgloo'),
                ),
                Container(
                  child: Text('heofghhloo'),
                ),
                Container(
                  child: Text('gfhdyh'),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
            )
          ],
        ),
      );

  }
}
