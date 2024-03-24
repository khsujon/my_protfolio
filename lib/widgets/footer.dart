import 'package:flutter/material.dart';

import '../constans/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      width: double.maxFinite,
      //color: Colors.blueGrey,
      child: const Text(
        'Made by Kamrul Hasan with Flutter 3.10',
        style: TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
