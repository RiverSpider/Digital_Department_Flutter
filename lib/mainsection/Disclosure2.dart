import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class Disclosure2 extends StatelessWidget {
  final String title;
  final String image;
  const Disclosure2({super.key, required this.title, required this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: ColorPalette.backgroundcolormain),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppConstants.disclosurepaddingheight),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: AppConstants.disclosurepaddingwidthleft2),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: AppConstants.cardsubdespadding),
                                SizedBox(
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: AppConstants.cardimagesize,
                                          height: AppConstants.cardimagesize,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(image),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: AppConstants.cardsubdespadding),
                              ],
                            ),
                          ),
                          const SizedBox(width: AppConstants.cardheaderpadding),
                          SizedBox(
                            width: AppConstants.disclosureheader,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: AppConstants.disclosureheaderlimit,
                                  child: Text(
                                    title,
                                    style: FontThemes.disclosureheader,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: AppConstants.disclosurepaddingwidthleft2),
                          SizedBox(
                            width: AppConstants.disclosurearrowboxsize,
                            height: AppConstants.disclosurearrowboxsize,
                            child: Stack(children: [
                              Positioned(
                                top: AppConstants.disclosurearrowpadding,
                                left: AppConstants.disclosurearrowpadding,
                                child:
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: AppConstants.disclosurearrowsize,
                                ),
                              )

                            ]),
                          ),
                          SizedBox(width: AppConstants.disclosurearrowpaddingleft),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
