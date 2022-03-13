import 'package:flutter/material.dart';
import 'package:game_stream/utilities/constants.dart';
import 'package:game_stream/widgets/category_card.dart';
import 'package:game_stream/widgets/featured_card.dart';
import 'package:game_stream/widgets/game_card.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMarginHorizontal,
          vertical: defaultMarginVertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                'Learn From The Real Master',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Flexible(
              child: Image.asset(
                'assets/profile_pic.png',
                width: 60,
              ),
            ),
          ],
        ),
      );
    }

    Widget _categoryList() {
      final categoryList = [
        const CategoryCard(image: 'assets/sword_icon.png', name: 'Sword Art'),
        const CategoryCard(image: 'assets/target_icon.png', name: 'Shooter'),
        const CategoryCard(image: 'assets/cards_icon.png', name: 'Strategy'),
      ];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMarginHorizontal,
            ),
            child: Text(
              'Categories',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: categoryList.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: defaultMarginHorizontal,
              ),
              itemBuilder: ((context, index) {
                return categoryList[index];
              }),
            ),
          ),
        ],
      );
    }

    Widget _featuredStreamersList() {
      final featuredStreamList = [
        const FeaturedCard(
          image: 'assets/spiderman_img.png',
          streamerPicture: 'assets/user_pic1.png',
          streamerName: 'Masayoshi',
          gameName: 'Spiderman',
        ),
        const FeaturedCard(
          image: 'assets/fortnite_img.png',
          streamerPicture: 'assets/user_pic2.png',
          streamerName: 'Tamara Sakki',
          gameName: 'Fornite Pro',
        ),
      ];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultMarginHorizontal,
              top: defaultMarginVertical,
              bottom: 16,
            ),
            child: Text(
              'Featured Streamers',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 242,
            child: ListView.builder(
              itemCount: featuredStreamList.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: defaultMarginHorizontal,
              ),
              itemBuilder: (context, index) {
                return featuredStreamList[index];
              },
            ),
          ),
        ],
      );
    }

    Widget _browseGame() {
      final gameList = [
        const GameCard(
          image: 'assets/gow_img.png',
          name: 'God of War',
        ),
        const GameCard(
          image: 'assets/nfs_img.png',
          name: 'Need for Speed',
        ),
        const GameCard(
          image: 'assets/wd_img.png',
          name: 'Watchdog Legion',
        ),
      ];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultMarginHorizontal,
              top: defaultMarginVertical,
              bottom: 16,
            ),
            child: Text(
              'Browse Game',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 242,
            child: ListView.builder(
              itemCount: gameList.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: defaultMarginHorizontal,
              ),
              itemBuilder: (context, index) {
                return gameList[index];
              },
            ),
          ),
        ],
      );
    }

    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        _header(),
        _categoryList(),
        _featuredStreamersList(),
        _browseGame(),
      ],
    );
  }
}
