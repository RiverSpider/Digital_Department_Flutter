import 'package:flutter/material.dart';

import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class Cards extends StatelessWidget {
  final String title;
  final String description;
  final String subdiscription;
  final String image;
  const Cards({super.key, required this.title, required this.description, required this.subdiscription, required this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppConstants.cardwidth,
          height: AppConstants.cardheight,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.cardcircle),
            ),
            shadows: const [
              FontThemes.cardshadow1,
              FontThemes.cardshadow2
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: AppConstants.cardwidth, height: AppConstants.cardimageheight),
              SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: AppConstants.cardimagepadding, height: AppConstants.cardimagesize),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: AppConstants.cardimagesize),
                                SizedBox(
                                  width: AppConstants.cardimagesize,
                                  height: AppConstants.cardimagesize,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: AppConstants.cardimagesize,
                                        height: AppConstants.cardimagesize,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: SizedBox(
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      child: SizedBox(
                                                        child: Stack(children: [
                                                          Positioned(
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: AssetImage(image),
                                                                  fit: BoxFit.fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: AppConstants.cardheaderpadding, height: AppConstants.cardimagesize),
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
                                    style: FontThemes.cardheader,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: AppConstants.cardimagepadding, height: AppConstants.cardpadding),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppConstants.cardwidth, height: AppConstants.carddespadding),
              SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: AppConstants.cardimagepadding),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: AppConstants.cardsubdesbottom,
                                  child: Text(
                                    description,
                                    style: FontThemes.carddescription,
                                  ),
                                ),
                                const SizedBox(height: AppConstants.cardsubdespadding),
                                SizedBox(
                                  height: AppConstants.cardsubdesbottom,
                                  child: Text(
                                    subdiscription,
                                    style: FontThemes.cardsubdescription,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppConstants.cardwidth, height: AppConstants.cardimagepadding),
            ],
          ),
        ),
      ],
    );
  }
}
