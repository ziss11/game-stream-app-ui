import 'package:flutter/material.dart';
import 'package:game_stream/utilities/constants.dart';

class GameCard extends StatelessWidget {
  final String image;
  final String name;

  const GameCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(
        right: defaultMarginHorizontal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
            child: Image.asset(
              image,
              width: 120,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: Text(
              name,
              style: Theme.of(context).textTheme.titleMedium,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
