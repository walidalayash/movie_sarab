import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/movies.dart';

class MoviesRepository extends ChangeNotifier{

List<Movies> movies=[];


   Future<Movies?> fetchMovies() async {

    try {
      final response = await http.get(
        Uri.parse('https://smdb.sadeem-lab.com/api/v1/movies'),
      );
      
return Movies.fromJson(jsonDecode(response.body));
   

    } catch (error) {
      //  throw (error);
    }
    return null;
  }

}