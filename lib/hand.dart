import 'package:boardgame/card.dart';
import 'package:boardgame/models/card_model.dart';
import 'package:flutter/material.dart';

class Hand extends StatefulWidget {
  const Hand({
    Key? key,
  }) : super(key: key);

  @override
  State<Hand> createState() => _HandState();
}

class _HandState extends State<Hand> {
  List<PlayingCardModel> cards = [
    PlayingCardModel(number: 1),
    PlayingCardModel(number: 2),
    PlayingCardModel(number: 3),
    PlayingCardModel(number: 4),
  ];

  @override
  void initState() {
    super.initState();
  }

  playCard(PlayingCardModel card) {
    setState(() {
      cards.remove(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: cards
            .map((e) => PlayingCard(
                  onDragCompleted: () => playCard(e),
                  cardModel: e,
                ))
            .toList(),
      ),
    );
  }
}
