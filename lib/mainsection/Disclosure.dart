import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';

class Disclosure extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const Disclosure({super.key, required this.title, required this.description, required this.image});
  @override
  Widget build(BuildContext context) {
    return Material(child: Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
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
                          const SizedBox(width: AppConstants.disclosurepaddingwidthleft),
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
                                  width: double.infinity,
                                  child: Text(
                                    title,
                                    style: FontThemes.disclosureheader,
                                  ),
                                ),
                                const SizedBox(width: AppConstants.disclosureheader, height: AppConstants.cardsubdespadding),
                                SizedBox(
                                  child: Text(
                                    description,
                                    style: FontThemes.disclosuresubdes,
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
                          SizedBox(width: AppConstants.disclosurepaddingwidthleft),
                          SizedBox(
                            width: AppConstants.disclosurearrowboxsize,
                            height: AppConstants.disclosurearrowboxsize,
                            child: Stack(children: [
                              Positioned(
                                top: AppConstants.disclosurearrowpadding,
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
    ),);;
  }
}
