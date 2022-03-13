import 'package:flutter/material.dart';
import 'package:game_stream/utilities/colors.dart';
import 'package:game_stream/utilities/constants.dart';

class StreamingPage extends StatelessWidget {
  static const routeName = '/streaing-page';
  const StreamingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _backgroundImage() {
      return Image.asset(
        'assets/gameplay_pic.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      );
    }

    Widget _appBar() {
      return Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blackColor,
              blackColor.withOpacity(0.1),
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMarginHorizontal,
          vertical: defaultMarginVertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: blackColor,
                  size: 15,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NFS Heat Patrol',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 22,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'by Masayoshi',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: light,
                        color: whiteColor,
                      ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: pinkColor,
                borderRadius: BorderRadius.circular(
                  defaultRadius / 2,
                ),
              ),
              child: Text(
                'LIVE',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: whiteColor,
                      fontWeight: medium,
                    ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _chatStream() {
      Widget textChat(String name, String chat) {
        return Padding(
          padding: const EdgeInsets.all(3),
          child: RichText(
            text: TextSpan(
              text: '$name: ',
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                TextSpan(
                  text: chat,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: light,
                        color: whiteColor,
                      ),
                ),
              ],
            ),
          ),
        );
      }

      Widget _textField() {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: greyColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  defaultRadius / 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: greyColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  defaultRadius / 2,
                ),
              ),
              hintText: 'Say something about streamer',
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: whiteColor,
                  ),
            ),
          ),
        );
      }

      final chatList = [
        textChat(
          'raldo',
          'body kit itu jual dmn?',
        ),
        textChat(
          'danny',
          'bintang 5 cuy',
        ),
        textChat(
          'anggars',
          'wah itu sih goks!',
        ),
      ];
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMarginHorizontal,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blackColor.withOpacity(0.1),
              blackColor,
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...chatList.map((chat) => chat).toList(),
              _textField(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _backgroundImage(),
            _chatStream(),
            _appBar(),
          ],
        ),
      ),
    );
  }
}
