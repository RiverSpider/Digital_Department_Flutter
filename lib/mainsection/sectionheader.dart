import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String description;

  const SectionHeader({super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Material(child: Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: AppConstants.cardimagepadding, color: ColorPalette.backgroundcolormain),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              title,
                              style: FontThemes.sectiontitle,
                            ),
                          ),
                          const SizedBox(height: AppConstants.sectionspacer),
                          SizedBox(
                            width: AppConstants.sectiontextlength,
                            child: Text(
                              description,
                              style: FontThemes.sectionsubtitle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppConstants.sectionboxwidth, height: AppConstants.sectionboxheight),
            ],
          ),
        ),
      ],
    ),);
  }
}
