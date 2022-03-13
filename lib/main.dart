import 'package:flutter/material.dart';
import 'package:game_stream/pages/home_page.dart';
import 'package:game_stream/pages/main_page.dart';
import 'package:game_stream/pages/streaming_page.dart';
import 'package:game_stream/utilities/colors.dart';
import 'package:game_stream/utilities/text_style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Stream App',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: kTextTheme,
        primaryColor: lightPinkColor,
      ),
      initialRoute: MainPage.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case MainPage.routeName:
            return MaterialPageRoute(
              builder: (_) => const MainPage(),
            );
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
            );
          case StreamingPage.routeName:
            return MaterialPageRoute(
              builder: (_) => const StreamingPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (_) => Center(
                child: Text(
                  'Page not Found :(',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            );
        }
      },
    );
  }
}
