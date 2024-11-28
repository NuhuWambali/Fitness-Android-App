import 'dart:core';
import 'package:flutter/material.dart';

class FitnessDetail{
  late String  image;
  late String emojiImage;
  late String Instructor;
  late String Description;
  late Color color;
  late int time;
  late String name;

  FitnessDetail({
     required this.image,
    required this.emojiImage,
    required this.Instructor,
    required this.Description,
    required this.color,
    required this.time,
    required this.name,
  });

}

List<FitnessDetail>UserItems=[
   FitnessDetail(
       name:"Yoga",
       image: "assets/images/running1.png",
       emojiImage:"assets/images/yoga.png" ,
       Instructor: "Bilha Daudi",
       Description: "Yoga is an accint practise originated from india",
       color: Color(0xFFC7E9FE),
       time: 15,
   ),
  FitnessDetail(
    name:"Gym Time",
    image: "assets/images/yoga2.png",
    emojiImage:"assets/images/6.png" ,
    Instructor: "Nuhu Wambali",
    Description: "Yoga is an accint practise originated from india",
    color: Color(0xFFF8F40A),

    time: 20,
  ),
  FitnessDetail(
    name:"Yoga",
    image: "assets/images/mediation.png",
    emojiImage:"assets/images/5.png" ,
    Instructor: "Bilha Daudi",
    Description: "Yoga is an accint practise originated from india",
    color: Color(0xFFEAC9E6),
    time: 12,
  ),
  FitnessDetail(
    name:"Yoga",
    image: "assets/images/mediation1.png",
    emojiImage:"assets/images/3.png" ,
    Instructor: "Bilha Daudi",
    Description: "Yoga is an accint practise originated from india",
    color: Color(0xFFCE0A58),
    time: 13,
  ),
  FitnessDetail(
    name:"Yoga",
    image: "assets/images/yoga1.png",
    emojiImage:"assets/images/1.png" ,
    Instructor: "Bilha Daudi",
    Description: "Yoga is an accint practise originated from india",
    color: Color(0xFFC7E9FE),
    time: 14,
  ),
  FitnessDetail(
    name:"Yoga",
    image: "assets/images/yoga1.png",
    emojiImage:"assets/images/2.png" ,
    Instructor: "Bilha Daudi",
    Description: "Yoga is an accint practise originated from india",
    color: Color(0xFFC7E9FE),
    time: 15,

  ),
];