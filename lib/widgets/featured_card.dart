import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game_stream/pages/streaming_page.dart';
import 'package:game_stream/utilities/colors.dart';
import 'package:game_stream/utilities/constants.dart';

class FeaturedCard extends StatelessWidget {
  final String image;
  final String streamerPicture;
  final String streamerName;
  final String gameName;

  const FeaturedCard(
      {Key? key,
      required this.image,
      required this.streamerPicture,
      required this.streamerName,
      required this.gameName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _playButton() {
      return SizedBox(
        height: 180,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: CircleAvatar(
                  backgroundColor: whiteColor.withOpacity(0.3),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 25,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return InkWell(
      onTap: () => Navigator.pushNamed(context, StreamingPage.routeName,),
      child: Container(
        margin: EdgeInsets.only(
          right: defaultMarginHorizontal,
        ),
        height: 242,
        width: 240,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  ),
                  child: Image.asset(
                    image,
                    width: 260,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                _playButton(),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  streamerPicture,
                  width: 50,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      streamerName,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: whiteColor,
                          ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      gameName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
