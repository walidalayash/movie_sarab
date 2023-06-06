import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
   Home({super.key});
List movieItems = [
  "أكشن","كوميديا","مغامرات","دراما","رعب","رياضة"
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:
    Column(children: [
      CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: ["assets/images/king.jpeg","assets/images/book.gif"].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin:const EdgeInsets.symmetric(horizontal: 5.0),
          decoration:const BoxDecoration(
          ),
          child: Image.asset(i.toString()) 
        );
      },
    );
  }).toList(),
),
Padding(
  padding: const EdgeInsets.only(top: 20),
  child:   SizedBox(
    height: 40,
    child:   ListView.builder(
      itemCount: movieItems.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index) =>
    Row(
      children: [
       const SizedBox(width: 20,),
     
    SizedBox(
      height:35,
      width: 50,
      child: Container(
        decoration: BoxDecoration(
    color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(movieItems[index].toString())),
      ),
    ),
   ],
    ),
    ),
  ),
),

    ],)
    );
  }
}