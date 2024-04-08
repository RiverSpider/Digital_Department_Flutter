import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';
import '../Assets/Strings.dart';
import '../mainsection/background.dart';
import 'mainsection.dart';

class Navigationbuttons extends StatelessWidget {
  const Navigationbuttons({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: AppConstants.numbertabs,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              child: Text(
                StringResources.profilepage,
                textAlign: TextAlign.center,
                style: FontThemes.activetab,
              ),
            ),
            Tab(
              child: Text(
                StringResources.settingspage,
                textAlign: TextAlign.center,
                style: FontThemes.activetab,
              ),
            ),
          ],
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorPalette.navlineactcolor,
                width: AppConstants.navlineheight,
              ),
            ),
          ),
          unselectedLabelColor: ColorPalette.navtextdiscolor,
        ),
        body: const TabBarView(
          children: [
            MainSection(),
            Background(),
          ],
        ),
      ),
    );
  }
}