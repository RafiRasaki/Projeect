import 'dart:ffi';

import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable{

  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;
  final String maskapai;
  final String about;
  final String itenerary1;
  final String itenerary2;
  final String itenerary3;
  final String itenerary4;
  final String itenerary5;
  final String itenerary6;
  final String itenerary7;
  final String itenerary8;
  

  DestinationModel({
    required this.id, 
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
    this.maskapai = '',
    this.about = '',
    this.itenerary1 = '',
    this.itenerary2 = '',
    this.itenerary3 = '',
    this.itenerary4 = '',
    this.itenerary5 = '',
    this.itenerary6 = '',
    this.itenerary7 = '',
    this.itenerary8 = '',
    
    });   


    factory DestinationModel.fromJson(String id, Map<String, dynamic>json) => 
        DestinationModel(
          id: id,
          name: json['name'],
          city: json['city'],
          imageUrl: json['imageUrl'],
          rating: json['rating'].toDouble(),
          price: json['price'],
          maskapai: json['maskapai'],
          about: json['about'],
          itenerary1: json['itenerary1'],
          itenerary2: json['itenerary2'],
          itenerary3: json['itenerary3'],
          itenerary4: json['itenerary4'],
          itenerary5: json['itenerary5'],
          itenerary6: json['itenerary6'],
          itenerary7: json['itenerary7'],
          itenerary8: json['itenerary8'], 
          
        );

   Map<String,dynamic> tojson() =>{
    'id' : id,
    'name' : name,
    'city' : city,
    'imageUrl' : imageUrl,
    'rating' : rating,
    'price' : price,
    'maskapai' : maskapai,
    'about' : about,
    'itenerary1' : itenerary1,
    'itenerary2' : itenerary2,
    'itenerary3' : itenerary3,
    'itenerary4' : itenerary4,
    'itenerary5' : itenerary5,
    'itenerary6' : itenerary6,
    'itenerary7' : itenerary7,
    'itenerary8' : itenerary8,


   };

  @override
  List<Object?> get props => [
    id, 
    name, city, imageUrl, rating, price,
     maskapai, about, itenerary1, itenerary2, itenerary3, itenerary4,
     itenerary5, itenerary6, itenerary7, itenerary8];

}