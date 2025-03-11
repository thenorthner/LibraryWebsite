import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';


class PhotoGallery extends StatelessWidget {
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];
   PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return CardSwiper(cardBuilder:
        (context, index, percentThresholdX, percentThresholdY) => cards[index], cardsCount: cards.length);
    ;
  }
}
