import 'package:flutter/material.dart';
import 'package:game_stream/pages/home_page.dart';
import 'package:game_stream/utilities/colors.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget _floatingWidget() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: lightPinkColor,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: lightPinkColor,
          child: const Icon(
            Icons.search,
            color: whiteColor,
            size: 35,
          ),
        ),
      );
    }

    Widget _bottomNavBar() {
      Widget _navbarIcon(int index, String image, double size) {
        return InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Image.asset(
            image,
            width: size,
            color: currentIndex == index ? whiteColor : darkPurpleColor,
          ),
        );
      }

      final iconList = [
        _navbarIcon(
          0,
          'assets/globe_icon.png',
          20,
        ),
        _navbarIcon(
          1,
          'assets/favorite_icon.png',
          20,
        ),
        const SizedBox(),
        _navbarIcon(
          2,
          'assets/play_icon.png',
          15,
        ),
        _navbarIcon(
          3,
          'assets/person_icon.png',
          20,
        ),
      ];
      return SizedBox(
        height: 80,
        child: BottomAppBar(
          color: backgroundColor,
          elevation: 0,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: iconList.map((icon) => icon).toList(),
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: _floatingWidget(),
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const SafeArea(
        child: HomePage(),
      ),
    );
  }
}
