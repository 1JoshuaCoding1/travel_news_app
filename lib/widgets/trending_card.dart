import 'package:flutter/material.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendingIslandList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TrendingIslandCard();
        },
      ),
    );
  }
}

class TrendingIslandCard extends StatelessWidget {
  const TrendingIslandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: 208,
      height: 88,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: [
          BoxShadow(
            color: kDarkBlue.withOpacity(0.051),
            offset: const Offset(0.0, 3.0),
            blurRadius: 24.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://homeiswhereyourbagis.com/wp-content/uploads/2019/06/lombok-mustsees-mawun-beach-drohne.jpg',
                ),
              ),
            ),
            child: SvgPicture.asset(
              'assets/play_icon.svg',
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Top Trending Island in 2022',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kPoppinsSemibold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.3,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/eye_icon.svg',
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '40,999',
                      style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
