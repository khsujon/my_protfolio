import 'package:flutter/material.dart';

import '../constans/colors.dart';
import '../constans/skill_item.dart';

class skillDesktop extends StatelessWidget {
  const skillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platform
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platfromItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Image.asset(
                      platfromItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platfromItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),

        const SizedBox(
          width: 50.0,
        ),

        //skills

        Flexible(
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 16.0),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          ),
        )
      ],
    );
  }
}
