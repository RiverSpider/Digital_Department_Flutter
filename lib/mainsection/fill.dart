import 'package:flutter/material.dart';

import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class Fill extends StatelessWidget {
  final String title;

  const Fill({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: FontThemes.chipshape,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppConstants.disclosurearrowpaddingleft),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: AppConstants.cardheaderpadding, height: AppConstants.cardsubdesbottom),
                          Text(
                            title,
                            style: FontThemes.chiptext,
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: AppConstants.cardheaderpadding, height: AppConstants.cardsubdesbottom),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppConstants.chippadding),
            ],
          ),
        ),
      ],
    );
  }
}
