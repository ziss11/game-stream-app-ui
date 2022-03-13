import 'package:flutter/material.dart';
import 'package:game_stream/utilities/colors.dart';
import 'package:game_stream/utilities/constants.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String name;

  const CategoryCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: defaultMarginHorizontal,
      ),
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 13,
                  color: whiteColor,
                ),
          )
        ],
      ),
    );
  }
}
