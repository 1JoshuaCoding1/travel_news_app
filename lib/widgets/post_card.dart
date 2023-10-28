import 'package:flutter/material.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/news_detail_screen.dart';
import 'package:news_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({ key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewsDetailScreen()),
              );
            },
            child: const NewsCardItem(),
          );
        },
      ),
    );
  }
}

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(
        right: 20,
      ),
      height: 304,
      width: 255,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kDarkBlue.withOpacity(0.051),
            offset: const Offset(0.0, 3.0),
            blurRadius: 24.0,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 164,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1698349239564-f82472deaf1f?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Flexible(
            child: Text(
              'Bali - Unique, unmatched. There is no other place like Bali in this world.',
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 19,
                    backgroundColor: kLightBlue,
                    backgroundImage: NetworkImage(
                      'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sam Aziz Ahwan',
                        style: kPoppinsSemibold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                      Text(
                        'Sep 9, 2022',
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 38,
                width: 38,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kLightWhite,
                ),
                child: SvgPicture.asset(
                  'assets/share_icon.svg',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
