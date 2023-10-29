import 'package:boardgame/models/card_model.dart';
import 'package:flutter/material.dart';

class PlayingCard extends StatelessWidget {
  final Function() onDragCompleted;
  final PlayingCardModel cardModel;
  const PlayingCard(
      {Key? key, required this.onDragCompleted, required this.cardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: cardModel,
      onDragUpdate: (details) {
        print(details);
      },
      onDragCompleted: () {
        onDragCompleted();
      },
      feedback: Container(color: Colors.red, height: 100, width: 50),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 100,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
