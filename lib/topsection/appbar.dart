import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key});

  @override
  Widget build(BuildContext context) {
    Color iconColor = ColorPalette.appbarcolor;

    return Container(
      width: AppConstants.appbarcontainerwidht,
      height: AppConstants.appbarcontainerheight,
      padding: const EdgeInsets.only(top: AppConstants.appbarpadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.close, color: iconColor),
            onPressed: () {
              print('Close button pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: iconColor),
            onPressed: () {
              print('Exit button pressed');
            },
          ),
        ],
      ),
    );
  }
}
