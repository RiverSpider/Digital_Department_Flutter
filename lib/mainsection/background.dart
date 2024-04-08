import 'package:flutter/material.dart';

import '../../Assets/Colors.dart';
import '../../Assets/Fonts.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: ColorPalette.backgroundcolormain,
          boxShadow: const [
            FontThemes.backgroundshadowtop
          ],
        ),
      );
  }
}
