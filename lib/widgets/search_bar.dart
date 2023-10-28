import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_styles.dart';
import '../size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
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
          Expanded(
            child: TextField(
              style: kPoppinsRegular.copyWith(
                color: kBlue,
                fontSize: SizeConfig.blockSizeHorizontal! * 3,
              ),
              controller: TextEditingController(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                hintText: 'Search for article...',
                border: InputBorder.none,
                hintStyle: kPoppinsRegular.copyWith(
                  color: kLightGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/search_icon.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
