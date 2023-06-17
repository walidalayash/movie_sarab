import 'dart:convert';

import 'package:flutter/widgets.dart';

import 'data.dart';
import 'meta.dart';

class Movies {
//   int counter=0;
//   void plus()
// {
// counter++;
// notifyListeners();
// } 
  Meta? meta;
  List<Data>? data;

  Movies({this.meta, this.data});

  Movies.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ?  Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}










  