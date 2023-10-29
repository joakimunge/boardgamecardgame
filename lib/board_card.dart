import 'package:boardgame/models/card_model.dart';
import 'package:flutter/material.dart';

class BoardCard extends StatelessWidget {
  final PlayingCardModel cardModel;
  const BoardCard({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: cardModel.position.dy,
      left: cardModel.position.dx,
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
