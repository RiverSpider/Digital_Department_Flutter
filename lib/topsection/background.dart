import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Fonts.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: ColorPalette.backgroundcolortop,
            boxShadow: [
              FontThemes.backgroundshadowtop
            ],
          ),
        );
  }
}
