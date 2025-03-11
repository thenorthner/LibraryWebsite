import 'package:flutter/material.dart';

class Carousel2 {

  static List<List<Widget>> imageSliders = [
    [
      Image.asset(
        'assets/images/books/1.jpg',
        width: 360,
        height: 300,
      ),
      Image.asset(
        'assets/images/books/2.png',
        width: 360,
        height: 300,
      ),
      Image.asset(
        'assets/images/books/3.jpg',
        width: 360,
        height: 300,
      )
    ],
    [
      Image.asset(
        'assets/images/books/1.jpg',
        width: 360,
        height: 300,
      ),
      Image.asset(
        'assets/images/books/2.png',
        width: 360,
        height: 300,
      ),
      Image.asset(
        'assets/images/books/3.jpg',
        width: 360,
        height: 300,
      )
    ],
    // Add more lists of four images as needed
  ];

  static List<String> image2 = [
    'assets/images/Gallery/pg1.jpeg',
    'assets/images/Gallery/pg2.jpeg',
    'assets/images/Gallery/pg3.jpg',
    'assets/images/Gallery/pg4.jpg',
    'assets/images/Gallery/pg5.jpg',
    'assets/images/Gallery/pg6.jpg',
    'assets/images/Gallery/pg7.jpg'

    // Add more widgets as needed
  ];

  static List<String> image3 = [
    'assets/images/sponsers/bookhouse.jpg',
    'assets/images/sponsers/Books-A-Million.png',
    'assets/images/sponsers/cjk.jpg',
    'assets/images/sponsers/Penguin_Random_House.png',
    'assets/images/sponsers/Simon_and_Schuster..png',
    'assets/images/sponsers/Baker_And_Taylor_Logo.jpg',
    // Add more widgets as needed
  ];

  static List<Widget>generateImageTiles3(){
    return image3.map((element)=>ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(element,
          fit : BoxFit.cover),
    )).toList();
  }

  static generateImageTiles() {
    return image2.map((element)=>ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(element,
          fit : BoxFit.cover),
    )).toList();
  }





}