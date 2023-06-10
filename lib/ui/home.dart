import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List genres = [
  "أكشن","كوميديا","مغامرات","دراما","رعب","رياضة"
];
List movies = [
  "assets/images/king.jpeg","assets/images/book.gif"
];
List actors = [
  "data:image/jpeg;base64,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",
  "data:image/jpeg;base64,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"
];

 int activeIndex = 0;

  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
                 
                  
                  body: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(children: [
                      SizedBox(height: 60,),
                      //slider
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 30.0),
                          height: 250.0,
                          child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                CarouselSlider.builder(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      reverse: true,
                    ),
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int itemIndex, int x) =>
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              InkWell(
                                child: Image.asset(
                                 movies[itemIndex],
                                  width: 1050,
                                  height: 350,
                                  fit: BoxFit.cover,
                                ),
                                onTap: () async {
                                
                                },
                              )
                            ],
                          ),
                        ))
              ],
            )),

                      //genres
                      Container(
                        height: 40,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: genres.length,
                            itemBuilder: (context, index) => Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black45,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                        color: 
                                             Colors.white,
                                      ),
                                      child: Text(
                                          genres[index],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      
                                    ),
                                    SizedBox(height: 50,),
                                  ],
                                )),
                      ),
                     SizedBox(height: 50,),
                      Container(
                        child: Text(
                          'New rental'
                              .toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),

                      //movie
                     Container(
                              height: 300,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: movies.length,
                                  itemBuilder: (context, index) => Column(
                                        children: [
                                       
                                            SizedBox(
                                              height: 300,
                                              child: Image.asset(movies[index])),
                                            
                                         
                                        ],
                                      )),
                            ),
                        

                      /////////////////////////////////////actor
                      SizedBox(height: 40,),
                      Text(
                        'Trending actors on this week'
                            .toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    const  SizedBox(height: 50,),
                      SizedBox(
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:actors.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  elevation: 3,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                      imageUrl: actors[index],
                                      imageBuilder: (context, imageBuilder) {
                                        return Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:const BorderRadius.all(
                                                  Radius.circular(100)),
                                              image: DecorationImage(
                                                image: imageBuilder,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                          
                                      },
                                      placeholder: (context, url) =>const SizedBox(
                                        width: 80,
                                        height: 80,
                                        child: Center(
                                            child: CircularProgressIndicator()),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Container(
                                        width: 80,
                                        height: 80,
                                        decoration:const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/img_not_found.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Container(
                                //   child: Center(
                                //     child: Text(
                                //       actors_list[index].name!,
                                //       style: TextStyle(
                                //         color: Colors.black54,
                                //         fontSize: 8,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          )),
                    ]),
                  ),
                );
    }}

