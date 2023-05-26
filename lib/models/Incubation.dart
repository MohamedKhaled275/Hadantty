import 'package:flutter/material.dart';

class Incubation{
  int id;
  String name;
  String city;

  Incubation(
  {
    @required this.id,
    @required this.name,
    @required this.city
  });

  factory Incubation.fromJson(Map<String, dynamic> json) {
    return Incubation(
        id: json['id'],
        name: json['name'],
        city: json['city']
    );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    return data;
  }

}