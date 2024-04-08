import 'package:flutter/material.dart';

import '../Assets/Fonts.dart';
import '../Assets/Strings.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: Column(
      children: [
        Text(
          StringResources.username,
          textAlign: TextAlign.center,
          style: FontThemes.usernamestyle,
        ),
      ],
    ),);
  }
}
