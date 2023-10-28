import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';

class UserWelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 51,
          width: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: kLightBlue,
            image: const DecorationImage(
              image: NetworkImage(
                'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png',
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back!',
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
              ),
            ),
            Text(
              'Monday, 31 October',
              style: kPoppinsRegular.copyWith(
                color: kGrey,
                fontSize: SizeConfig.blockSizeHorizontal! * 3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
