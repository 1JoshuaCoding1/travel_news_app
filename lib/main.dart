import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'size_config.dart';

import 'widgets/hashtag.dart';
import 'widgets/navagation_bar.dart';
import 'widgets/profile__bar.dart';
import 'widgets/post_card.dart';
import 'widgets/trending_card.dart';

import 'profile_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
      } else if (index == 0) {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: const HomeScreen(),
        bottomNavigationBar: NavagationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          UserWelcomeWidget(),
          const SizedBox(
            height: 30,
          ),
          const SearchBar(),
          const SizedBox(
            height: 15,
          ),
          const Hashtag(
            [
              '#Health',
              '#Music',
              '#Technology',
              '#Sports',
              '#Fashion',
              '#Travel',
            ],
            key: Key('hashtag'),
          ),
          const SizedBox(
            height: 30,
          ),
          const NewsCard(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                'View all',
                style: kPoppinsMedium.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          TrendingIslandList(),
        ],
      ),
    );
  }
}
