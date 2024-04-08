import 'package:digital_department_flutter/Assets/Strings.dart';
import 'package:flutter/material.dart';

import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppConstants.avatarsize,
          height: AppConstants.avatarsize,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(StringResources.avatarpic),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.avatarcircle),
            ),
            shadows: [
              FontThemes.avatarshadow
            ],
          ),
        ),
      ],
    );
  }
}
