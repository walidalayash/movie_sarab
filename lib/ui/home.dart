import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // appBar: AppBar(title: Text(''),),
     body:
    Column(children: [
      CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: ["assets/images/king.jpeg","assets/images/book.gif"].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Image.asset(i.toString()) 
        );
      },
    );
  }).toList(),
)
    ],)
    );
  }
}