import 'package:flutter/material.dart';

import '../Assets/Consts.dart';
import 'appbar.dart';
import 'avatar.dart';
import 'background.dart';
import 'name.dart';
import '../mainsection/navigationbuttons.dart';
class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: AppConstants.topsectionheight,
          child: Stack(
            children: [
              Positioned(
                child: Background(),
              ),
              Positioned(
                left: AppConstants.zero,
                top: AppConstants.zero,
                right: AppConstants.zero,
                child: Bar(),
              ),
              Positioned(
                left: AppConstants.zero,
                right: AppConstants.zero,
                top: AppConstants.nameposition,
                child: Name(),
              ),
              Positioned(
                left: AppConstants.zero,
                right: AppConstants.zero,
                top: AppConstants.avposition,
                child: Avatar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
