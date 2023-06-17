import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/model/movies.dart';
import 'package:http/http.dart' as http;

import '../core/repositories/moive_repository.dart';


class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
    //
 late Future<Movies?> futureMovies;

 @override
  void initState() {
    super.initState();
    futureMovies = Provider.of<MoviesRepository>(context,listen:false).fetchMovies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:FutureBuilder<Movies?>(
  future: futureMovies,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Column(
        children: [
          Text(snapshot.data!.data![0].title!),
          Image.network(snapshot.data!.data![0].img!)
        ],
      );
      
    } else if (snapshot.hasError) {
      return Text('${snapshot.error}');
    }

    // By default, show a loading spinner.
    return const CircularProgressIndicator();
  },
)
// _isLoading==true?
// const CircularProgressIndicator()
// :
// Text("${Provider.of<MoviesRepository>(context).movies[0].data![0].title}")
// Column(
//   children: [
//         Center(child: Text("${Provider.of<Movies>(context).counter}",style: TextStyle(fontFamily: "HS",fontSize: 20),)),
//         TextButton(onPressed: (){
// Provider.of<Movies>(context,listen: false).plus();
//         }, child: Text('+'))
//   ],
// )
    );
  }
}