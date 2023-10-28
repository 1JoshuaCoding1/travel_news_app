import 'package:flutter/material.dart';

import '../app_styles.dart';
import '../size_config.dart';

class Hashtag extends StatelessWidget {
  final List<String> items;

  const Hashtag(this.items, {required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14.0, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 38.0),
            child: Text(
              items[index],
              style: kPoppinsMedium.copyWith(
                color: kGrey,
                fontSize: SizeConfig.blockSizeHorizontal! * 3,
              ),
            ),
          );
        },
      ),
    );
  }
}
