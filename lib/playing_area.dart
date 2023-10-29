import 'package:boardgame/board_card.dart';
import 'package:boardgame/models/card_model.dart';
import 'package:flutter/material.dart';

class PlayingArea extends StatefulWidget {
  const PlayingArea({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayingArea> createState() => _PlayingAreaState();
}

class _PlayingAreaState extends State<PlayingArea> {
  final List<PlayingCardModel> _cards = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      onAccept: (data) {
        setState(() {
          _cards.add(data as PlayingCardModel);
        });
      },
      builder: (context, candidateData, rejectedData) {
        return Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: Stack(
              children: _cards.map((card) {
            return BoardCard(cardModel: card);
          }).toList()),
        );
      },
    );
  }
}
