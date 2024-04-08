import 'package:digital_department_flutter/mainsection/navigationbuttons.dart';
import 'package:flutter/material.dart';
import 'package:digital_department_flutter/topsection/topsection.dart';

import 'Assets/Consts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                const SliverAppBar(
                  expandedHeight: AppConstants.topsectionheight-24,
                  flexibleSpace: FlexibleSpaceBar(
                    background: TopSection(),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Navigationbuttons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
